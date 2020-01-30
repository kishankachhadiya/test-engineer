class AddTopicInQuerstion < ActiveRecord::Migration[5.2]
  def change
    add_column :questions, :topic_id, :integer, index: true
  end
end
