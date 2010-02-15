require 'spec_helper'

describe "/suppliers/show.html.erb" do
  include SuppliersHelper
  before(:each) do
    assigns[:supplier] = @supplier = stub_model(Supplier,
      :supplier_name => "value for supplier_name"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ supplier_name/)
  end
end
