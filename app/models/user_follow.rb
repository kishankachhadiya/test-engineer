class UserFollow < ApplicationRecord
  belongs_to :follow, class_name: "User", foreign_key: :user_id
  belongs_to :following, class_name: "User", foreign_key: :following_user_id

  validates_uniqueness_of :user_id, scope: :following_user_id
end
