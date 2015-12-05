class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, required: true
      t.string :email, required: true

      t.timestamps null: false
    end
  end
end