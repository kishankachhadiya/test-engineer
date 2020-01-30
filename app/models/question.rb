class Question < ApplicationRecord
  belongs_to :user
  belongs_to :topic
  has_many :answers

  validates_presence_of :question
end
