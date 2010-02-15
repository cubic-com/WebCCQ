require 'spec_helper'

describe "/contacts/index.html.erb" do
  include ContactsHelper

  before(:each) do
    assigns[:contacts] = [
      stub_model(Contact,
        :contact_name => "value for contact_name"
      ),
      stub_model(Contact,
        :contact_name => "value for contact_name"
      )
    ]
  end

  it "renders a list of contacts" do
    render
    response.should have_tag("tr>td", "value for contact_name".to_s, 2)
  end
end
