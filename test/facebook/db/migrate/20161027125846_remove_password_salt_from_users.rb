class RemovePasswordSaltFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :Password_salt, :string
  end
end
