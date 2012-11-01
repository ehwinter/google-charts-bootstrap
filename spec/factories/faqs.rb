# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :faq do
    order 1
    question "MyString"
    answer "MyText"
    display false
  end
end
