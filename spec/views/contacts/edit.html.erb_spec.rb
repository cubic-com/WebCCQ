require 'spec_helper'

describe "/contacts/edit.html.erb" do
  include ContactsHelper

  before(:each) do
    assigns[:contact] = @contact = stub_model(Contact,
      :new_record? => false,
      :contact_name => "value for contact_name"
    )
  end

  it "renders the edit contact form" do
    render

    response.should have_tag("form[action=#{contact_path(@contact)}][method=post]") do
      with_tag('input#contact_contact_name[name=?]', "contact[contact_name]")
    end
  end
end
