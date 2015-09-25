FactoryGirl.define do
  factory :user, class: User do
  	sequence(:email) { |n| "user#{n}@example.com" } # More Dave voodoo magic
    password 'password' 
    first_name "Billy Bob"
	last_name "Thorton"
	age 1
	gender true
	city "Somewhere town"
	state "MyString"
	vehicle_type true
	description "MyText"
  end
end