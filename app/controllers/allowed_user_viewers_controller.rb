class AllowedUserViewersController < ApplicationController

  def new
  end

  def create
    @allowed_user_viewer = AllowedUserViewer.new(viewer_params)
    if @allowed_user_viewer.save
      redirect_to user_answers_path(current_user)
    else
      flash[:alert] = "That user has not taken a survey"
      redirect_to :back
    end
  end

private
  def viewer_params
    params.require(:allowed_user_viewer).permit(:user_email, :user_id)
  end
end
