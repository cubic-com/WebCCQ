require 'spec_helper'

describe EmployeCcqQualificationsController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/employe_ccq_qualifications" }.should route_to(:controller => "employe_ccq_qualifications", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/employe_ccq_qualifications/new" }.should route_to(:controller => "employe_ccq_qualifications", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/employe_ccq_qualifications/1" }.should route_to(:controller => "employe_ccq_qualifications", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/employe_ccq_qualifications/1/edit" }.should route_to(:controller => "employe_ccq_qualifications", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/employe_ccq_qualifications" }.should route_to(:controller => "employe_ccq_qualifications", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/employe_ccq_qualifications/1" }.should route_to(:controller => "employe_ccq_qualifications", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/employe_ccq_qualifications/1" }.should route_to(:controller => "employe_ccq_qualifications", :action => "destroy", :id => "1") 
    end
  end
end
