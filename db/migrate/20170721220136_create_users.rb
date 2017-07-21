class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.attachment :profile
      t.integer :zip

      t.timestamps
    end
  end
end
