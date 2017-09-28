class AddFirstAndLastNamesToUser < ActiveRecord::Migration[5.1]
  def self.up
    add_column :users, :first_name, :string
    change_column :users, :first_name, :string, null: false
    add_column :users, :last_name, :string
    change_column :users, :last_name, :string, null: false
  end

  def self.down
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
