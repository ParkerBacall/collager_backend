class CanvaImagesController < ApplicationController
   
    def index
        @canvaImages = CanvaImage.all
        render json: @canvaImages
    end
    
    def create
        @canvaImage = CanvaImage.create(
            canva_id: params[:collage_id], 
            image_id: params[:image_id])
        render json: {canvaImage: @canvaImage}
    end
end
