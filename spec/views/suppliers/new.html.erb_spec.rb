require 'spec_helper'

describe "/suppliers/new.html.erb" do
  include SuppliersHelper

  before(:each) do
    assigns[:supplier] = stub_model(Supplier,
      :new_record? => true,
      :supplier_name => "value for supplier_name"
    )
  end

  it "renders new supplier form" do
    render

    response.should have_tag("form[action=?][method=post]", suppliers_path) do
      with_tag("input#supplier_supplier_name[name=?]", "supplier[supplier_name]")
    end
  end
end
