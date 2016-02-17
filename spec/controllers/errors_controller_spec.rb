require 'spec_helper'

describe ErrorsController do

  describe "GET 'not_found'" do
    it "returns http success" do
      get 'not_found'
      expect(response.status).to eq 404
    end
  end

  describe "GET 'server_error'" do
    it "returns http success" do
      get 'server_error'
      expect(response.status).to eq 500
    end
  end

end
