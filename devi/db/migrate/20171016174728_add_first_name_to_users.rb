class AddFirstNameToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :username, :first_name
    add_column    :users, :last_name, :string, null: false, default: ""
  end
end
