class CreateOttoViewRawTrips < ActiveRecord::Migration
  def change
    create_table :otto_view_raw_trips do |t|
      t.integer :serial_number
      t.integer :trip_number
      t.datetime :current_time
      t.float :latitude
      t.float :longitude
      t.float :trip_distance
      t.string :trip_duration
      t.float :trip_fuel_usage
      t.float :fuel_price
      t.float :trip_fuel_cost
      t.float :trip_operating_cost
      t.float :average_economy
      t.string :survey_completed
      t.integer :driver_number
      t.integer :passengers8
      t.integer :passengers15
      t.integer :passengers24
      t.integer :passengers64
      t.integer :passengers74
      t.integer :passengers75plus
      t.string :trip_destination
      t.integer :imei
      t.integer :imsi
      t.datetime :report_time

      t.timestamps

    end
    add_index(:otto_view_raw_trips,:serial_number)
    add_index(:otto_view_raw_trips,:trip_number)
    add_index(:otto_view_raw_trips,:current_time)

  end
end
