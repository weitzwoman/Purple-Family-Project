class Question < ActiveRecord::Base
  has_many :answers
  has_many :users, through: :answers

  accepts_nested_attributes_for :answers, reject_if: :all_blank, allow_destroy: true

  # def answers_for_form
  #   collection = answers.where(question_id: id)
  #   collection.any? ? collection : answers.build
  # end
end
