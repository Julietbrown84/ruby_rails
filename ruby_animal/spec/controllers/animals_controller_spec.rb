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
            @animal = Animal.create(attributes_for(:animal))
            get :show, id: @animal.id
        end

        it { should respond_with(200) }
        it { should render_template(:show) }
        it "should assign animal with specified id to @animal" do
            expect(assigns(:animal)).to eq(@animal)
        end

    end

    describe "#new" do

        before do
          get :new
        end

        it { should respond_with(200) }
        it { should render_template(:new) }

        end

    end

    describe "#create" do

    context "if valid params" do

      before do
        @animal_params = attributes_for(:animal)
        post :create, { animal: @animal_params }
      end

      it { should respond_with(302) }
      it "should redirect to the new animal's page" do
        animal = Animal.find_by(@animal_params)
        expect(response).to redirect_to("/animals/#{animal.id}")
      end
      it "creates a new cat with specified params" do
        expect(Animal.find_by(@valid_params)).to be_truthy
      end

    end

    context "if invalid params" do

      before do
        post :create, { animal: {name: "test"} }
      end

      it { should respond_with(400) }
      it { should render_template(:new) }
      it "should not create a new animal" do
        expect(Animal.find_by_name("test")).to be_nil
      end

    end

  end

  describe "#edit" do

       before do
         @animal = create(:animal)
         get :edit, id: @animal.id
       end

       it { should respond_with(200) }
       it { should render_template(:edit) }
       it "should assign animal with specified id to @animal" do
         expect(assigns(:animal)).to eq(@animal)
       end

     end
