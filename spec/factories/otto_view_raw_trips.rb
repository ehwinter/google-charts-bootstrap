# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :otto_view_raw_trip do
    serial_number 1
    trip_number 1
    current_time "2012-09-04 15:33:18"
    latitude 1.5
    longitude 1.5
    trip_distance 1.5
    trip_duration "MyString"
    trip_fuel_usage 1.5
    fuel_price 1.5
    trip_fuel_cost 1.5
    trip_operating_cost 1.5
    average_economy 1.5
    survey_completed "MyString"
    driver_number 1
    passengers8 1
    passengers15 1
    passengers24 1
    passengers64 1
    passengers74 1
    passengers75plus 1
    trip_destination "MyString"
    imei 1
    imsi 1
    report_time "2012-09-04 15:33:18"
  end
end
