class Image < ApplicationRecord
    has_many :canva_images
    has_many :canvas, through: :canva_images
end
