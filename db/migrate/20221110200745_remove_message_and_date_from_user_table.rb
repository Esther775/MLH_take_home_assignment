class RemoveMessageAndDateFromUserTable < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :message
    remove_column :users, :date
    add_column :users, :message_id, :integer
  end
end
