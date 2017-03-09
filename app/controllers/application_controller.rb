class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  def answer_match(question)
    cua = current_user.answers.where(question_id: question.id)
    otheru = User.where(email: current_user.allowed_user_viewers.last.user_email)
    othera = otheru.first.answers.where(question_id: question.id)
    if (cua.first.response1 == true) && (othera.first.response1 == true)
      "We both agree"
    elsif (cua.first.response2 == true) && (othera.first.response2 == true)
      "We both disagree"
    elsif (cua.first.response3 == true) && (othera.first.response3 == true)
      "We're both not sure"
    else
      "We don't see eye to eye on this issue"
    end
  end

  helper_method :answer_match
end
