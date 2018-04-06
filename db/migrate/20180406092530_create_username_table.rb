class CreateUsernameTable < ActiveRecord::Migration[5.1]
  def change
    create_table :usernames do |t|
      t.string :username, :limit => 15
    end
  end
end
