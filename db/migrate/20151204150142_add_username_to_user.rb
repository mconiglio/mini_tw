class AddUsernameToUser < ActiveRecord::Migration
  def change
    add_column :users, :username, :string, after: :name
  end
end
