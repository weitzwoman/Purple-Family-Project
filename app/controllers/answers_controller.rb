class AnswersController < ApplicationController

  def index
    @questions = Question.all
    @answers = Answer.where(:user_id => current_user)
    @other_answers = Answer.all
    @allowed_user_viewer = AllowedUserViewer.new
    @allowed_user_viewers = AllowedUserViewer.where(:user_id => current_user)
    @users = []
    @allowed_user_viewers.each do |auv|
      @user = User.where(email: auv.user_email)
      binding.pry
      if @user.length > 0
        user = @user[0]
        @users.push(user)
      end
    end
    @last_compare_user = @users.select { |user| user.form_complete == true }
    @last_compare = @last_compare_user.last
  end

  def show
  end

  def create
    @question = Question.find(params[:question_id])
    @answer = @question.answers.new(answer_params)
    @answer.user_id = current_user.id
    if @answer.save
      respond_to do |format|
        format.html { redirect_to questions_path }
        format.js
      end
    end
  end

private
  def answer_params
    params.require(:answer).permit(:id, :response1, :response2, :response3, :response4, :question_id)
  end
end
