require 'spec_helper'

describe "/employes/index.html.erb" do
  include EmployesHelper

  before(:each) do
    assigns[:employes] = [
      stub_model(Employe,
        :first_name => "value for last_name",
        :last_name => "value for last_name",
        :address1 => "value for address1",
        :address2 => "value for address2",
        :province => "value for province",
        :city => "value for city",
        :postal_code => "value for postal_code",
        :ssn => "value for ssn",
        :date_endemp => "value for date_endemp",
        :country => "value for country",
        :civil_status => "value for civil_status"
      ),
      stub_model(Employe,
        :first_name => "value for last_name",
        :last_name => "value for last_name",
        :address1 => "value for address1",
        :address2 => "value for address2",
        :province => "value for province",
        :city => "value for city",
        :postal_code => "value for postal_code",
        :ssn => "value for ssn",
        :date_endemp => "value for date_endemp",
        :country => "value for country",
        :civil_status => "value for civil_status"
      )
    ]
  end

  it "renders a list of employes" do
    render
    response.should have_tag("tr>td", "value for last_name".to_s, 2)
    response.should have_tag("tr>td", "value for last_name".to_s, 2)
    response.should have_tag("tr>td", "value for address1".to_s, 2)
    response.should have_tag("tr>td", "value for address2".to_s, 2)
    response.should have_tag("tr>td", "value for province".to_s, 2)
    response.should have_tag("tr>td", "value for city".to_s, 2)
    response.should have_tag("tr>td", "value for postal_code".to_s, 2)
    response.should have_tag("tr>td", "value for ssn".to_s, 2)
    response.should have_tag("tr>td", "value for date_endemp".to_s, 2)
    response.should have_tag("tr>td", "value for country".to_s, 2)
    response.should have_tag("tr>td", "value for civil_status".to_s, 2)
  end
end
