require 'spec_helper'

describe "/employes/show.html.erb" do
  include EmployesHelper
  before(:each) do
    assigns[:employe] = @employe = stub_model(Employe,
      :first_name => "value for last_name",
      :last_name => "value for last_name",
      :address1 => "value for address1",
      :address2 => "value for address2",
      :province => "value for province",
      :city => "value for city",
      :postal_code => "value for postal_code",
      :ssn => "value for ssn",
      :country => "value for country",
      :civil_status => "value for civil_status"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(//)
    response.should have_text(/value\ for\ last_name/)
    response.should have_text(/value\ for\ address1/)
    response.should have_text(/value\ for\ address2/)
    response.should have_text(/value\ for\ province/)
    response.should have_text(/value\ for\ city/)
    response.should have_text(/value\ for\ postal_code/)
    response.should have_text(/value\ for\ ssn/)
    response.should have_text(/value\ for\ country/)
    response.should have_text(/value\ for\ civil_status/)
  end
end
