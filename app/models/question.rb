class Question < ActiveRecord::Base
  has_many :answers
  has_many :users, through: :answers

  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  validates :content, :presence => true
end
