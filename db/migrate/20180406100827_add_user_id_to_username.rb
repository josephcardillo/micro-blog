class AddUserIdToUsername < ActiveRecord::Migration[5.1]
  def self.up
    add_column :usernames, :user_id, :integer
  end
end
