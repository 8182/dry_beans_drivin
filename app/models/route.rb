class Route < ApplicationRecord
    has_many :service #anadir depent destroy? tiene sentido?
    
    validates :route_day, :presence => true
    validates :carrier_name, :presence => true
    validates :car_plate, :presence => true
end
