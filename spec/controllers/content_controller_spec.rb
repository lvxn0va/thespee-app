require 'spec_helper'

describe ContentController do

  describe "GET 'monthly'" do
    it "returns http success" do
      get 'monthly'
      response.should be_success
    end
  end

  describe "GET 'quarterly'" do
    it "returns http success" do
      get 'quarterly'
      response.should be_success
    end
  end

  describe "GET 'yearly'" do
    it "returns http success" do
      get 'yearly'
      response.should be_success
    end
  end

end
