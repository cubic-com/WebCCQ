require 'spec_helper'

describe "/projects/new.html.erb" do
  include ProjectsHelper

  before(:each) do
    assigns[:project] = stub_model(Project,
      :new_record? => true,
      :project_name => "value for project_name",
      :project_dexcription => "value for project_dexcription"
    )
  end

  it "renders new project form" do
    render

    response.should have_tag("form[action=?][method=post]", projects_path) do
      with_tag("input#project_project_name[name=?]", "project[project_name]")
      with_tag("input#project_project_dexcription[name=?]", "project[project_dexcription]")
    end
  end
end
