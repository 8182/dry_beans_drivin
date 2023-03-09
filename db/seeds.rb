# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
routes = []
10.times do |i|
    routes << (
        Route.create([{ 
        route_day: Faker::Date.between(from: 5.days.ago, to: Date.today),
        carrier_name: "#{Faker::Name.name}",
        car_plate:"#{Faker::Alphanumeric.alphanumeric(number: 6)}" 
        }])
    )
end
10.times do |i|
   services =  Service.create([{
    service_type:["delivery", "pick up"].sample ,
    route_id: routes[i][0].id ,
    service_time: Faker::Date.between(from: 5.days.ago, to: Date.today),
    client_name: "#{Faker::Name.name}"
    }])
    services[0].save
end
