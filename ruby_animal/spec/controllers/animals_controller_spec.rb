require 'rails_helper'

RSpec.describe Animal, type: :controller do

    describe "fields" do
      it { should have_db_column(:name).of_type(:string) }
      it { should have_db_column(:life_story).of_type(:string) }
      it { should have_db_column(:lives).of_type(:integer).with_options}


end
