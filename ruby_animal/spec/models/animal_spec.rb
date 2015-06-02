
require 'rails_helper'

RSpec.describe Animal, type: :model do


    describe "fields" do
        it { should have_db_column(:name).of_type(:string) }
        it { should have_db_column(:life_story).of_type(:text) }
        it { should have_db_column(:image_url).of_type(:string) }
        it { should have_db_column(:lives).of_type(:integer).with_options(default: 9) }
    end

    describe "validations" do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:life_story) }
        it { should validate_presence_of(:image_url) }
    end

    describe "methods" do
        describe "#lose_a_life!" do
            context "if animal has more than 1 life remaining" do
                it "decrements the animals's lives by 1" do
                    healthy_animal.lose_a_life!
                    expect(healthy_animal.lives).to eq(8)
                end
            end
            context "if animal has 1 life remaining" do
                it "removes the animal from the database" do
                    almost_dead_animal.lose_a_life!
                    expect(Animal.find_by_name(almost_dead_animal.name)).to be_nil
                end
            end
        end
    end

end
