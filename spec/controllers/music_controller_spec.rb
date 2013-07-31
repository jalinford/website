require 'spec_helper'

describe MusicController do

  describe "GET 'index'" do
    it "returns http success" do
      get 'index'
      response.should be_success
    end
  end

  describe "GET 'music'" do
    it "returns http success" do
      get 'music'
      response.should be_success
    end
  end

end
