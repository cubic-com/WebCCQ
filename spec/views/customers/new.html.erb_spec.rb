require 'spec_helper'

describe "/customers/new.html.erb" do
  include CustomersHelper

  before(:each) do
    assigns[:customer] = stub_model(Customer,
      :new_record? => true,
      :customer_name => "value for customer_name"
    )
  end

  it "renders new customer form" do
    render

    response.should have_tag("form[action=?][method=post]", customers_path) do
      with_tag("input#customer_customer_name[name=?]", "customer[customer_name]")
    end
  end
end
