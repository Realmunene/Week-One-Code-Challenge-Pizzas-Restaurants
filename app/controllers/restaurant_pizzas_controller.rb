class RestaurantPizzasController < ApplicationController
rescue_from ActiveRecord::RecordInvalid, with: :unprocessable_entity_method
private
def unprocessable_entity_method(e)
    render json:{errors: e.record.errors}, status: :unprocessable_entity
end
