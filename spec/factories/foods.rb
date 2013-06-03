FactoryGirl.define do
  sequence(:food_name)        {|n| "food_#{n}" }
  factory :food do
    name                   { "#{FactoryGirl.generate(:customer_name)}"   }
  end
end
