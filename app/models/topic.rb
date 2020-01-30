class Topic < ApplicationRecord
  belongs_to :user

  has_many :questions
  has_many :user_follow_topics
  has_many :followed_users, through: :user_follow_topics, class_name: 'User'

  validates_presence_of :title
end
