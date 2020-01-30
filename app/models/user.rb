class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers
  has_many :my_topics, class_name: "Topic"

  has_many :user_follow_topics
  has_many :topics, through: :user_follow_topics, class_name: 'Topic'

  has_many :followed, class_name: 'UserFollow', source: :follow
  has_many :following, class_name: 'UserFollow', foreign_key: :following_user_id, source: :following

  def full_name
    "#{first_name} #{last_name}"
  end

end
