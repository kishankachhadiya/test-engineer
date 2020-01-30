class CreateUserFollowTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :user_follow_topics do |t|
      t.belongs_to :user, index: true
      t.belongs_to :topic, index: true

      t.timestamps
    end
  end
end
