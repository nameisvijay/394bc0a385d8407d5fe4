class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :questions
  has_many :answers
  has_many :interests
  has_many :topics, through: :interests
  #has_many :followed_users, through: :relationships, source: "followed_id"
  has_many :relationships, foreign_key: "follower_id", dependent: :destroy

  def following
  end
end
