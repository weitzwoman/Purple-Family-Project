class Answer < ActiveRecord::Base
  belongs_to :user, optional: true
  belongs_to :question, optional: true
end
