require 'spec_helper'

describe "/customers/edit.html.erb" do
  include CustomersHelper

  before(:each) do
    assigns[:customer] = @customer = stub_model(Customer,
      :new_record? => false,
      :customer_name => "value for customer_name"
    )
  end

  it "renders the edit customer form" do
    render

    response.should have_tag("form[action=#{customer_path(@customer)}][method=post]") do
      with_tag('input#customer_customer_name[name=?]', "customer[customer_name]")
    end
  end
end
