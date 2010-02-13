require 'spec_helper'

describe EmployeCcqTradesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/employe_ccq_trades" }.should route_to(:controller => "employe_ccq_trades", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/employe_ccq_trades/new" }.should route_to(:controller => "employe_ccq_trades", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/employe_ccq_trades/1" }.should route_to(:controller => "employe_ccq_trades", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/employe_ccq_trades/1/edit" }.should route_to(:controller => "employe_ccq_trades", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/employe_ccq_trades" }.should route_to(:controller => "employe_ccq_trades", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/employe_ccq_trades/1" }.should route_to(:controller => "employe_ccq_trades", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/employe_ccq_trades/1" }.should route_to(:controller => "employe_ccq_trades", :action => "destroy", :id => "1") 
    end
  end
end
