class Poll < ApplicationRecord
  has_many :answers
  has_one_attached :image

  def has_answer_that_starts_with(letter)
    answers.any? { |a| a.name.first == letter }
  end
end
