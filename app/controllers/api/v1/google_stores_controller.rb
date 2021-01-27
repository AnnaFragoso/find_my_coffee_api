class Api::V1::GoogleStoresController < ApplicationController
    def index
        puts "acessei o indeeeeeeeeeeeeeeeeeeeeeeeex #{params[:latitude]} eeeeee #{params[:longitude]}"
        places = getGoogleCoffeeListService.new(params[:latitude], params[:longitude]).call
        render json: places
    end

    def show
        render json: GetGoogleCoffeeDetailsService.new(params[:id]).call
    end
end
