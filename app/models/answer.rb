class Answer < ActiveRecord::Base
  belongs_to :user
  belongs_to :question, optional: true
end
