class CanvasController < ApplicationController
    before_action :authenticate, only: [:create]

    def show
        @canva = Canva.find(params[:id])
        render json: @canva, include: :images
    end

    def create
        @canva = Canva.create(name: params[:name], user_id: @user.id)
        render json: @canva, include: :images
    end

    def destroy
        @canva = Canva.find(params[:id])
        @canva.destroy
    end
end
