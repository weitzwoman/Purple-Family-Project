class Question < ActiveRecord::Base
  belongs_to :survey, optional: true
  has_many :answers
  has_many :users, through: :answers

  accepts_nested_attributes_for :answers
end
