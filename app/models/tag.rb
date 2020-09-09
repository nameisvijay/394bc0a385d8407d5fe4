class Tag < ApplicationRecord
  belongs_to :topic
  belongs_to :question
  validates_uniqueness_of :topic_id, :scope => [:question_id]
end
