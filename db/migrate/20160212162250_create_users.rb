class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, :null => true
      t.string :email, :null => false
      t.string :first_name
      t.string :last_name

      t.timestamps null: false
    end
  end
end
