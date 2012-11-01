require 'spec_helper'

describe PagesController do

  describe "GET 'about'" do
    it "returns http success" do
      get 'about'
      response.should be_success
    end
  end

  describe "GET 'incentives'" do
    it "returns http success" do
      get 'incentives'
      response.should be_success
    end
  end

  describe "GET 'faq'" do
    it "returns http success" do
      get 'faq'
      response.should be_success
    end
  end

  describe "GET 'supporters'" do
    it "returns http success" do
      get 'supporters'
      response.should be_success
    end
  end

  describe "GET 'contact'" do
    it "returns http success" do
      get 'contact'
      response.should be_success
    end
  end

  describe "GET 'privacy'" do
    it "returns http success" do
      get 'privacy'
      response.should be_success
    end
  end

  describe "GET 'about_summerhill_impact'" do
    it "returns http success" do
      get 'about_summerhill_impact'
      response.should be_success
    end
  end

  describe "GET 'survey'" do
    it "returns http success" do
      get 'survey'
      response.should be_success
    end
  end

  describe "GET 'install'" do
    it "returns http success" do
      get 'install'
      response.should be_success
    end
  end

  describe "GET 'baseline'" do
    it "returns http success" do
      get 'baseline'
      response.should be_success
    end
  end

  describe "GET 'training'" do
    it "returns http success" do
      get 'training'
      response.should be_success
    end
  end

  describe "GET 'challenge'" do
    it "returns http success" do
      get 'challenge'
      response.should be_success
    end
  end

  describe "GET 'payout'" do
    it "returns http success" do
      get 'payout'
      response.should be_success
    end
  end

  describe "GET 'drive_better'" do
    it "returns http success" do
      get 'drive_better'
      response.should be_success
    end
  end

  describe "GET 'drive_less'" do
    it "returns http success" do
      get 'drive_less'
      response.should be_success
    end
  end

end
