class Hike < ApplicationRecord
    has_many :photographs
    has_many :users, through: :photographs
    has_attached_file :image, styles: { :thumbnail => "300x300", :medium => "500x500" }
    validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/
    
end
