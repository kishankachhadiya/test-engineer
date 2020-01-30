class CreateUserFollows < ActiveRecord::Migration[5.2]
  def change
    create_table :user_follows do |t|
      t.belongs_to :user, index: true
      t.integer :following_user_id, index: true

      t.timestamps
    end
  end
end
