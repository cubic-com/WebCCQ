require 'spec_helper'

describe User do
  before(:each) do
    @valid_attributes = {
      :login => "value for login",
      :email => "value for email",
      :password => "value for password",
      :hashed_password => "value for hashpassword",
      :salt => "value for hashpassword",
      :first_name => "value for first_name",
      :last_name => "value for last_name",
    }
  end

  it "should create a new instance given valid attributes" do
    User.create!(@valid_attributes)
  end
  
  it "should authenticate a user if valid login and password"do 
    User.authenticate(@valid_attributes[:login],"bug")
  end
  
  it "shoud not authenticate with invalid password" do
    User.authenticate("test","test")
      
  end
 
  
  
  
end
