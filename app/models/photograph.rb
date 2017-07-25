class Photograph < ApplicationRecord
  belongs_to :user
  belongs_to :hike
  has_attached_file :image, styles: { :medium => "300" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
