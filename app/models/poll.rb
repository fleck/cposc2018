class Poll < ApplicationRecord
  has_many :answers
  has_one_attached :image
end
