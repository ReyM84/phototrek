class CreateHikes < ActiveRecord::Migration[5.1]
  def change
    create_table :hikes do |t|
      t.string :location
      t.string :length
      t.integer :difficulty
      t.text :comments

      t.timestamps
    end
  end
end
