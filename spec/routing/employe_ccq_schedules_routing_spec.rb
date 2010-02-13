require 'spec_helper'

describe EmployeCcqSchedulesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/employe_ccq_schedules" }.should route_to(:controller => "employe_ccq_schedules", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/employe_ccq_schedules/new" }.should route_to(:controller => "employe_ccq_schedules", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/employe_ccq_schedules/1" }.should route_to(:controller => "employe_ccq_schedules", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/employe_ccq_schedules/1/edit" }.should route_to(:controller => "employe_ccq_schedules", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/employe_ccq_schedules" }.should route_to(:controller => "employe_ccq_schedules", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/employe_ccq_schedules/1" }.should route_to(:controller => "employe_ccq_schedules", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/employe_ccq_schedules/1" }.should route_to(:controller => "employe_ccq_schedules", :action => "destroy", :id => "1") 
    end
  end
end
