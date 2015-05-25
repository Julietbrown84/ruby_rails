FactoryGirl.define do

    factory :animal do

        name Faker::Name.name
        life_story Faker::Lorem.paragraph
        image_url Faker::Avatar.image

        factory :animal_with_1_life do
            lives 1
        end

    end

end
