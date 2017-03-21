class AllowedUserViewersController < ApplicationController

  def new
  end

  def create
    @allowed_user_viewer = AllowedUserViewer.new(viewer_params)
    @allowed_user_viewer.user_id = current_user.id
    if User.where(email: viewer_params[:user_email]).length > 0
      @allowed_user_viewer.save
      redirect_to user_answers_path(current_user)
    else
      flash[:alert] = "That user has not taken a survey, but we'll send them an invite"
      @allowed_user_viewer.save
      UserMailer.welcome_email(@allowed_user_viewer).deliver_now
      redirect_to :back
    end
  end

  def form_complete
    @user = User.find(params[:id])
    if @user.update(form_complete: true)
      redirect_to user_answers_path(current_user)
    end
  end

private
  def viewer_params
    params.require(:allowed_user_viewer).permit(:user_email, :user_id)
  end
end
