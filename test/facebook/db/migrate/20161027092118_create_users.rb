class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :Firstname
      t.string :Lastname
      t.string :Email
      t.string :Password

      t.timestamps null: false
    end
  end
end
