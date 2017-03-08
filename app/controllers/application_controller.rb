class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def answer_match(question)
    cua = current_user.answers.where(question_id: question.id)
    otheru = User.find(current_user.allowed_user_viewers.first.user_id)
    othera = otheru.answers.where(question_id: question.id)
    if cua.first.response1 == othera.first.response1 && cua.first.response1 == true
      "We agree"
    elsif cua.first.response2 == othera.first.response2 && cua.first.response2 == true
      "We disagree"
    else cua.first.response3 == othera.first.response3 && cua.first.response3 == true
      "We're not sure"
    end
  end

  helper_method :answer_match
end
