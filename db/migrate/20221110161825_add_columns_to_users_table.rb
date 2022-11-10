class AddColumnsToUsersTable < ActiveRecord::Migration[7.0]
  def change
    add_column :user, :date, :datetime
    add_column :user, :message, :text
  end
end
