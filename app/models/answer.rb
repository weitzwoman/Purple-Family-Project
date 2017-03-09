class Answer < ActiveRecord::Base
  belongs_to :user, optional: true
  belongs_to :question, optional: true

  def show_true
    if self.response1
      "I agree"
    elsif self.response2
      "I disagree"
    else self.response3
      "I'm not sure"
    end
  end
end
