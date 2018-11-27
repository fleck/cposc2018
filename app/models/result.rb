class Result < ApplicationRecord
  belongs_to :poll
  belongs_to :user
  belongs_to :answer
end
