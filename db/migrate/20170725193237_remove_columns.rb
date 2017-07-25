class RemoveColumns < ActiveRecord::Migration[5.1]
  def change
    remove_column :users, :profile_updated_at
    remove_column :users, :profile_file_size
    remove_column :users, :profile_content_type
  end
end
