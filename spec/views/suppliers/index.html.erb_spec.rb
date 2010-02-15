require 'spec_helper'

describe "/suppliers/index.html.erb" do
  include SuppliersHelper

  before(:each) do
    assigns[:suppliers] = [
      stub_model(Supplier,
        :supplier_name => "value for supplier_name"
      ),
      stub_model(Supplier,
        :supplier_name => "value for supplier_name"
      )
    ]
  end

  it "renders a list of suppliers" do
    render
    response.should have_tag("tr>td", "value for supplier_name".to_s, 2)
  end
end
