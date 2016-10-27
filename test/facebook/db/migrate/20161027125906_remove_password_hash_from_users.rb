class RemovePasswordHashFromUsers < ActiveRecord::Migration
  def change
    remove_column :users, :Password_hash, :string
  end
end
