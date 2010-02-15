require 'spec_helper'

describe "/contacts/show.html.erb" do
  include ContactsHelper
  before(:each) do
    assigns[:contact] = @contact = stub_model(Contact,
      :contact_name => "value for contact_name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ contact_name/)
  end
end
