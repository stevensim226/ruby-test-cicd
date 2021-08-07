require 'rails_helper'

RSpec.describe "Car", type: :request do
  context "GET requests" do
    it 'GET reqs the cars/homepage' do
      get "/cars/homepage"
      expect(response).to be_successful
    end
  end
end
