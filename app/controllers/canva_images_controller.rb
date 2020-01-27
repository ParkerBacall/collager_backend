class CanvaImagesController < ApplicationController
   
    def index
        @canvaImages = CanvaImage.all
        render json: @canvaImages, include: :image
    end
    
    def create 
        @canvaImage = CanvaImage.create(
            canva_id: params[:collage_id], 
            image_id: params[:image_id],
            size: params[:size],
            position: params[:position],
            height: params[:height]
            )
        render json: {canvaImage: @canvaImage}
    end

    def update
        @canvaImage = CanvaImage.find(params[:id])
        @canvaImage.update(
        size: params[:size], 
        position: params[:position], 
        height: params[:height]
        )
        render json: @canvaImage
    end

end
