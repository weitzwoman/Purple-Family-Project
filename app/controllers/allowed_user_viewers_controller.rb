class AllowedUserViewersController < ApplicationController

  def new
  end

  def create
    @allowed_user_viewer = AllowedUserViewer.new(viewer_params)
    @allowed_user_viewer.user_id = current_user.id
    if @allowed_user_viewer.save
      redirect_to user_answers_path(current_user)
    else
      flash[:alert] = "That user has not taken a survey"
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
