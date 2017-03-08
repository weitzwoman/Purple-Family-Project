class AnswersController < ApplicationController

  def index
    @questions = Question.all
    @answers = Answer.where(:user_id => current_user)
    @other_answers = Answer.all
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
