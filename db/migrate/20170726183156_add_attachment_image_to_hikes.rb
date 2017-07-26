class AddAttachmentImageToHikes < ActiveRecord::Migration[5.1]
  def self.up
    change_table :hikes do |t|
      t.attachment :image
    end
  end

  def self.down
    remove_attachment :hikes, :image
  end
end
