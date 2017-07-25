class User < ApplicationRecord
    has_secure_password
    validates :email, presence: true, uniqueness: true
    has_attached_file :image, styles: { :medium => "200" }
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
end
