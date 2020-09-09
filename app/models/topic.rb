class Topic < ApplicationRecord
  has_many :interests
  has_many :users, through: :interests
  has_many :tags
  has_many :questions, through: :tags
end
