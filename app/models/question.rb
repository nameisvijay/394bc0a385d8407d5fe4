class Question < ApplicationRecord
  belongs_to :user
  has_many :answers
  has_many :tags
  has_many :topics, through: :tags
end
