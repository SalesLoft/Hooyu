require 'rails_helper'

RSpec.describe Admin::PeopleController, :type => :controller do
  let(:user) { FactoryGirl.create(:user, admin: true) }
  let!(:people) { FactoryGirl.create_list(:person, 10) }

  before(:each) { sign_in(user) }

  describe "#index" do
    it "returns a list of people" do
      get :index
      expect(assigns["people"].count).to eq(Person.count)
    end
  end
end
