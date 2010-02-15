require 'spec_helper'

describe "/customers/index.html.erb" do
  include CustomersHelper

  before(:each) do
    assigns[:customers] = [
      stub_model(Customer,
        :customer_name => "value for customer_name"
      ),
      stub_model(Customer,
        :customer_name => "value for customer_name"
      )
    ]
  end

  it "renders a list of customers" do
    render
    response.should have_tag("tr>td", "value for customer_name".to_s, 2)
  end
end
