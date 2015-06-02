require 'rails_helper'

RSpec.describe ArticleController, type: :controller do


    describe "#index" do

        before do
            5.times { Article.create(attributes_for(:article)) }
            get :index
        end

        it { should respond_with(200) }
        it { should render_template(:index) }
        it "should assign @rticles to all Articles in DB" do
            expect(assigns(:articles)).to eq(Article.all)
        end

    end

    describe "#show" do

        before do
            @article = Article.create(attributes_for(:article))
            get :show, id: @article.id
        end

        it { should respond_with(200) }
        it { should render_template(:show) }
        it "should assign article with specified id to @article" do
            expect(assigns(:article)).to eq(@article)
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



end
