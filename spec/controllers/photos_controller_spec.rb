require 'spec_helper'

describe PhotosController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'slideshow'" do
    it "returns http success" do
      get 'slideshow'
      response.should be_success
    end
  end

end
