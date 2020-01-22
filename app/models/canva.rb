class Canva < ApplicationRecord
    has_many :canva_images
    has_many :images, through: :canva_images
end
