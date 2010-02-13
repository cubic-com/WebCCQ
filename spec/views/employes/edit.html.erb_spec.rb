require 'spec_helper'

describe "/employes/edit.html.erb" do
  include EmployesHelper

  before(:each) do
    assigns[:employe] = @employe = stub_model(Employe,
      :new_record? => false,
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
  end

  it "renders the edit employe form" do
    render

    response.should have_tag("form[action=#{employe_path(@employe)}][method=post]") do
      with_tag('input#employe_first_name[name=?]', "employe[first_name]")
      with_tag('input#employe_last_name[name=?]', "employe[last_name]")
      with_tag('input#employe_address1[name=?]', "employe[address1]")
      with_tag('input#employe_address2[name=?]', "employe[address2]")
      with_tag('input#employe_province[name=?]', "employe[province]")
      with_tag('input#employe_city[name=?]', "employe[city]")
      with_tag('input#employe_postal_code[name=?]', "employe[postal_code]")
      with_tag('input#employe_ssn[name=?]', "employe[ssn]")
      with_tag('input#employe_date_endemp[name=?]', "employe[date_endemp]")
      with_tag('input#employe_country[name=?]', "employe[country]")
      with_tag('input#employe_civil_status[name=?]', "employe[civil_status]")
    end
  end
end
