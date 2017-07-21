class CreatePhotographs < ActiveRecord::Migration[5.1]
  def change
    create_table :photographs do |t|
      t.text :content
      t.references :user, foreign_key: true
      t.references :hike, foreign_key: true

      t.timestamps
    end
  end
end
