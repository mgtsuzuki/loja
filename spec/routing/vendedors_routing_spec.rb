require "rails_helper"

RSpec.describe VendedorsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(:get => "/vendedors").to route_to("vendedors#index")
    end

    it "routes to #new" do
      expect(:get => "/vendedors/new").to route_to("vendedors#new")
    end

    it "routes to #show" do
      expect(:get => "/vendedors/1").to route_to("vendedors#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/vendedors/1/edit").to route_to("vendedors#edit", :id => "1")
    end


    it "routes to #create" do
      expect(:post => "/vendedors").to route_to("vendedors#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/vendedors/1").to route_to("vendedors#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/vendedors/1").to route_to("vendedors#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/vendedors/1").to route_to("vendedors#destroy", :id => "1")
    end
  end
end
