require 'spec_helper'

describe EmployesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/employes" }.should route_to(:controller => "employes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/employes/new" }.should route_to(:controller => "employes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/employes/1" }.should route_to(:controller => "employes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/employes/1/edit" }.should route_to(:controller => "employes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/employes" }.should route_to(:controller => "employes", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/employes/1" }.should route_to(:controller => "employes", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/employes/1" }.should route_to(:controller => "employes", :action => "destroy", :id => "1") 
    end
  end
end
