class SurveysController < ApplicationController
  before_action :set_survey, only: [:show, :edit, :update, :destroy, :answers]

  # other content here, didn't run scaffold

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
