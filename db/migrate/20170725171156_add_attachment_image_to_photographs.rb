class AddAttachmentImageToPhotographs < ActiveRecord::Migration[5.1]
  def self.up
    change_table :photographs do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :photographs, :image
  end
end
