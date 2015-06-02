require 'rails_helper'

RSpec.describe AnimalsController, type: :controller do

    describe "#index" do

        before do
            5.times { Animal.create(attributes_for(:animal)) }
            get :index
        end

        it { should respond_with(200) }
        it { should render_template(:index) }
        it "should assign @animals to all Animals in DB" do
            expect(assigns(:animals)).to eq(Animal.all)
        end

    end

        describe "#show" do

        before do
            @animal = Animal.create(attributes_for(:cat))
            get :show, id: @animal.id
        end

        it { should respond_with(200) }
        it { should render_template(:show) }
        it "should assign cat with specified id to @animal" do
            expect(assigns(:animal)).to eq(@animal)
        end

    end

end
