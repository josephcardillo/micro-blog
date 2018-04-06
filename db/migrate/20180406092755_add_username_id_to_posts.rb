class AddUsernameIdToPosts < ActiveRecord::Migration[5.1]
  def self.up
    add_column :posts, :username_id, :string
  end
end
