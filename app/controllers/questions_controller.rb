class QuestionsController < ApplicationController
  # before_action :set_survey, only: [:show, :edit, :update, :destroy, :answers]

  def index
    @questions = Question.all
    @answer = Answer.new
  end

  def show
    @question = Question.find(params[:id])
    # @answers = @question.answers
  end

  def new
    @question = Question.new
    # # @answers = @question.answers
    @question.answers.build
    # @questions.each do |question|
    #   question.answers.build
    # end
    # 1.times do
    #   question = @questions.build
    #   2.times { question.answers.build }
    # end
  end

  def create
    @question = Question.new(question_params)
    if @question.save
      flash[:notice] = "Successfully created question"
      redirect_to questions_path
    else
      render :new
    end
  end

  def edit
    @question = Question.find(params[:id])
  end

  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      flash[:notice] = "Update question success"
      redirect_to questions_path
    else
      render :edit
    end
  end

  def destroy
    @question = Question.find(params[:id])
    @question.answers.each do |answer|
      answer.destroy
    end
    @question.destroy
    flash[:notice] = "Destroy question success"
    redirect_to questions_path
  end

  # def answers
  #   @users = User.all
  #   # @questions = @survey.questions
  # end

private
  def question_params
    params.require(:question).permit(:content,
      answers_attributes: [:id, :response, :_destroy
      ])
  end
end
