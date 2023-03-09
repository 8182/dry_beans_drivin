class ServicesController < ApplicationController
    def index
        @services = Service.all
        render json: @services
    end
    
    def show
        @services = Service.find(params[:id])
        render json:@services
    end
    
    def create
        @services = Service.create(
        service_type:params[:service_type], #validar solo los 2 tipos de datos
        route_id:params[:route_id], #validar solo id valido
        service_time:params[:service_time],
        client_name:params[:client_name]
        )
        render json: @services

        # http://localhost:3000/service/create?route_id=1&service_type=pick up&service_time=09-03-2023&client_name=brayan v
    end
    
    def update
        @services = Service.find(params[:id])
        @services.update(
        service_type:params[:service_type],
        route_id:params[:route_id],
        service_time:params[:service_time],
        client_name:params[:client_name]
        )
        render json: @services
    end
    #no se pidio metodo destroy
end
