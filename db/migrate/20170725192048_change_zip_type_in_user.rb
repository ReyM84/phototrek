class ChangeZipTypeInUser < ActiveRecord::Migration[5.1]
  def change
    change_column :users, :zip, :string
  end
end
