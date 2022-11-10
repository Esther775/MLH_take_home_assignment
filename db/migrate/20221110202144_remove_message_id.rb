class RemoveMessageId < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :message_id
    add_column :messages, :user_id, :integer
  end
end
