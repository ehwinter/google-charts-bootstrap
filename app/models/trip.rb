class Trip < ActiveRecord::Base
  belongs_to :user
  attr_accessible :device_id, :distance, :dollars, :duration, :economy, :end_date, :fuel_usage, :number, :serial_number, :user_id

  def self.import_from_otto_view
      #select all trips
      tc_trips = nil
      puts "found #{tc_trips.size}"
      tc_trips.each do|tc|
        #insert trips
      end
      
  end

end
