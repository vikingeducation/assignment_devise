class AddFirstNameLastNameToUsers < ActiveRecord::Migration[5.0]
  def up
    add_column :users, :first_name, :string, null: false, default: ""
    add_column :users, :last_name, :string, null: false, default: ""

    change_column_default :users, :first_name, nil
    change_column_default :users, :last_name, nil
  end

  def down
    remove_column :users, :first_name
    remove_column :users, :last_name
  end
end
