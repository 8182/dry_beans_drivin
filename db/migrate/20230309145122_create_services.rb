class CreateServices < ActiveRecord::Migration[7.0]
  def change
    create_table :services do |t|
      t.references :route, null: false, foreign_key: true
      t.string :service_type
      t.time :service_time
      t.string :client_name

      t.timestamps
    end
  end
end
