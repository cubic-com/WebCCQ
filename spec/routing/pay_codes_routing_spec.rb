require 'spec_helper'

describe PayCodesController do
  describe "routing" do
    it "recognizes and generates #index" do
      { :get => "/pay_codes" }.should route_to(:controller => "pay_codes", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/pay_codes/new" }.should route_to(:controller => "pay_codes", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/pay_codes/1" }.should route_to(:controller => "pay_codes", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/pay_codes/1/edit" }.should route_to(:controller => "pay_codes", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/pay_codes" }.should route_to(:controller => "pay_codes", :action => "create") 
    end

    it "recognizes and generates #update" do
      { :put => "/pay_codes/1" }.should route_to(:controller => "pay_codes", :action => "update", :id => "1") 
    end

    it "recognizes and generates #destroy" do
      { :delete => "/pay_codes/1" }.should route_to(:controller => "pay_codes", :action => "destroy", :id => "1") 
    end
  end
end
