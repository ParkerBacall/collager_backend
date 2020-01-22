class CanvasController < ApplicationController
    def create
        @canvas = Canva.create(params[:name])
        render json: @canvas
    end
end
