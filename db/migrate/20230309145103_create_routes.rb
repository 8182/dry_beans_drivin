class CreateRoutes < ActiveRecord::Migration[7.0]
  def change
    create_table :routes do |t|
      t.datetime :route_day
      t.string :carrier_name
      t.string :car_plate

      t.timestamps
    end
  end
end
