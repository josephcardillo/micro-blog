class AddUsernameIdToUser < ActiveRecord::Migration[5.1]
  def self.up
    add_column :users, :username_id, :integer
  end
end
