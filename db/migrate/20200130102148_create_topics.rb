class CreateTopics < ActiveRecord::Migration[5.2]
  def change
    create_table :topics do |t|
      t.belongs_to :user, index: true
      t.string :title, index: true

      t.timestamps
    end
  end
end
