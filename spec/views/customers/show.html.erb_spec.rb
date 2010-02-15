require 'spec_helper'

describe "/customers/show.html.erb" do
  include CustomersHelper
  before(:each) do
    assigns[:customer] = @customer = stub_model(Customer,
      :customer_name => "value for customer_name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ customer_name/)
  end
end
