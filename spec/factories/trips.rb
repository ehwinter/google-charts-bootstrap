# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :trip do
    user_id 1
    device_id 1
    serial_number 1
    number 1
    end_date "2012-09-04 18:58:19"
    distance 1.5
    duration "MyString"
    fuel_usage 1.5
    dollars 1.5
    economy 1.5
  end
end
