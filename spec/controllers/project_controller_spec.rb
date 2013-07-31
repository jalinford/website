require 'spec_helper'

describe ProjectController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'project'" do
    it "returns http success" do
      get 'project'
      response.should be_success
    end
  end

end
