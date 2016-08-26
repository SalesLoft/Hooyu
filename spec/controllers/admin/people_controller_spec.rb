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

  describe "#destroy" do
    it "deletes a person", vcr: { cassette_name: "admin-people-controller_destroy", match_requests_on: [:body] } do
      expect {
        delete :destroy, id: people.last.id
      }.to change{ Person.count }.by(-1)
    end
  end
end
