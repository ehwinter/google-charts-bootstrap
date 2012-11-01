class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.belongs_to :user
      t.belongs_to :device
      t.integer :serial_number # Device.device
      t.integer :number    # trip number 
      t.datetime :end_date #end of trip
      t.float :distance    # km
      t.string :duration   # "HH:MM:SS"
      t.float :fuel_usage  #litres
      t.float :dollars     #cost for this trip
      t.float :economy     #km/litre

      t.timestamps
    end
    add_index(:trips, [:serial_number, :number], unique: true)
  end
end
