class Addnametouser < ActiveRecord::Migration
  def change
    add_column :users, :first_name, :string
    change_column_null :users, :first_name, false

    add_column :users, :last_name, :string
    change_column_null :users, :last_name, false
  end
end
