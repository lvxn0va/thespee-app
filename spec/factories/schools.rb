# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :school do
    name "MyString"
    address "MyString"
    city "MyString"
    state "MyString"
    zip "MyString"
    phone "MyString"
    short_description "MyString"
    long_description "MyText"
    category_id 1
    instructors "MyString"
    verified false
    price "MyString"
  end
end
