require 'rails_helper'

RSpec.describe Animal, type: :controller do

    describe "validations" do
        it { should validate_presence_of(:name) }
        it { should validate_presence_of(:life_story) }
        it { should validate_presence_of(:image_url) }
    end

    describe "methods" do
        describe "#lose_a_life!" do
            context "if cat has more than 1 life remaining" do
                it "decrements the cat's lives by 1" do
                    healthy_cat.lose_a_life!
                    expect(healthy_cat.lives).to eq(8)
                end
            end
            context "if cat has 1 life remaining" do
                it "removes the cat from the database" do
                    almost_dead_cat.lose_a_life!
                    expect(Cat.find_by_name(almost_dead_cat.name)).to be_nil
                end
            end
        end
    end

end


end
