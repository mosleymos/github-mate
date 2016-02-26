require 'spec_helper'

describe RepoContributorsController do

  describe "GET 'search'" do
    it "returns http success" do
      get 'search'
      response.should be_success
    end
  end

  describe "GET 'results'" do
    it "returns http success" do
      get 'results'
      response.should be_success
    end
  end

  describe "GET 'show'" do
    it "returns http success" do
      get 'show', {:repo_name => 'Bijoux', :repo_owner => 'louagej'}
      response.should be_success
    end
  end

end
