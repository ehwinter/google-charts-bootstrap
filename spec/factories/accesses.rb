# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :access do
    user_id 1
    code "MyString"
    username "MyString"
    location "MyString"
  end
end
