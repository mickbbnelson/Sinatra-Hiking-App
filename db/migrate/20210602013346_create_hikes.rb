class CreateHikes < ActiveRecord::Migration[5.2]
  def change
    create_table :hikes do |t|
      t.integer :user_id
      t.string :location
      t.integer :distance
      t.string :terrain
      t.timestamps null: false
    end
  end
end
