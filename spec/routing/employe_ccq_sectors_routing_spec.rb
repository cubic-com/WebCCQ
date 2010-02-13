require 'spec_helper'

describe EmployeCcqSectorsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/employe_ccq_sectors" }.should route_to(:controller => "employe_ccq_sectors", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/employe_ccq_sectors/new" }.should route_to(:controller => "employe_ccq_sectors", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/employe_ccq_sectors/1" }.should route_to(:controller => "employe_ccq_sectors", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/employe_ccq_sectors/1/edit" }.should route_to(:controller => "employe_ccq_sectors", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/employe_ccq_sectors" }.should route_to(:controller => "employe_ccq_sectors", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/employe_ccq_sectors/1" }.should route_to(:controller => "employe_ccq_sectors", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/employe_ccq_sectors/1" }.should route_to(:controller => "employe_ccq_sectors", :action => "destroy", :id => "1") 
    end
  end
end
