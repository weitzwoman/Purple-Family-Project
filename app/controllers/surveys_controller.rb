class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :answers]

  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
    5.times do
      question = @survey.questions.build
      3.times { question.answers.build }
    end
  end

  def create
    @survey = Survey.new(params[:survey])
    if @survey.save
      flash[:notice] = "Successfully create survey"
      redirect_to @survey
    else
      render :new
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])
    if @srvey.update_attributes(params[:survey])
      flash[:notice] = "Update survey success"
      redirect_to @survey
    else
      render :edit
    end
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    flash[:notice] = "Destroy survey success"
    redirect_to surveys_path
  end

  def answers
    @users = User.all
    @questions = @survey.questions
  end

private

  # other content from scaffold

  # def survey_params
  #   params.require(:survey).permit(:name,
  #     :questions_atrributes => [:id, :content,
  #       :answers_attributes => [:id, :content, :user_id]
  #     ])
  # end
end
