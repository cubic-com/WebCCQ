require 'spec_helper'

describe "/contacts/new.html.erb" do
  include ContactsHelper

  before(:each) do
    assigns[:contact] = stub_model(Contact,
      :new_record? => true,
      :contact_name => "value for contact_name"
    )
  end

  it "renders new contact form" do
    render

    response.should have_tag("form[action=?][method=post]", contacts_path) do
      with_tag("input#contact_contact_name[name=?]", "contact[contact_name]")
    end
  end
end
