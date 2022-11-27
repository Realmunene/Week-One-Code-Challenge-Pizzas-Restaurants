class RestaurantsController < ApplicationController
rescue_from ActiveRecord::RecordNotFound, with: :record_not_found_method
    def index
render json: Restaurant.all
end
def show
    restaurant = find_restaurant
    render json : restaurant
    private
    def find_restaurant
        # to return nill when no record is found 
        Restaurant.find(id: params[:id])
end
    def record_not_found_method
        render json:{error:"Rest not found"}, status: :not_found
    end
end
