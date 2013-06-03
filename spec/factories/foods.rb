FactoryGirl.define do
  factory :food do
    name           { "Food #{FactoryGirl.generate(:food_id)}"   }
    price          { "15 #{FactoryGirl.generate(:price)}/"  }
  end
end
