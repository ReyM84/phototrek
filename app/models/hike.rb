class Hike < ApplicationRecord
    has_many :photographs
    has_attached_file :image
end
