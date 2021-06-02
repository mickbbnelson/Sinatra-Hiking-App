class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :username
      t.string :email_address
      t.string :password
      t.timestamps null: false
    end
  end
end
