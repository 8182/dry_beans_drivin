class RoutesController < ApplicationController
    def index
        @routes = Route.all
        render json: @routes
    end

    def show
        @routes = Routes.find(params[:id])
        render json:@routes
    end

    def create
        @routes = Route.create(
            route_day:params[:route_day], 
            carrier_name:params[:carrier_name], 
            car_plate: params[:car_plate]
        )
        render json: @routes
    end
      
    def update
        @routes = Route.find(params[:id])
        @routes.update(
            route_day:params[:route_day],
            carrier_name:params[:carrier_name],
            car_plate: params[:car_plate]
        )
        render json: @routes
    end
    #no se pidio metodo destroy
end