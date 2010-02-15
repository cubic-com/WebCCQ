require 'spec_helper'

describe "/projects/index.html.erb" do
  include ProjectsHelper

  before(:each) do
    assigns[:projects] = [
      stub_model(Project,
        :project_name => "value for project_name",
        :project_dexcription => "value for project_dexcription"
      ),
      stub_model(Project,
        :project_name => "value for project_name",
        :project_dexcription => "value for project_dexcription"
      )
    ]
  end

  it "renders a list of projects" do
    render
    response.should have_tag("tr>td", "value for project_name".to_s, 2)
    response.should have_tag("tr>td", "value for project_dexcription".to_s, 2)
  end
end
