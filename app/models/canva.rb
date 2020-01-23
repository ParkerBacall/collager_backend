class Canva < ApplicationRecord
    has_many :canva_images, :dependent => :destroy
    has_many :images, through: :canva_images
    belongs_to :user
end
