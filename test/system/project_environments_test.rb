require "application_system_test_case"

class ProjectEnvironmentsTest < ApplicationSystemTestCase
  setup do
    @project_environment = project_environments(:one)
  end

  test "visiting the index" do
    visit project_environments_url
    assert_selector "h1", text: "Project Environments"
  end

  test "creating a Project environment" do
    visit project_environments_url
    click_on "New Project Environment"

    fill_in "Is public", with: @project_environment.is_public
    fill_in "Name", with: @project_environment.name
    fill_in "Project", with: @project_environment.project_id
    click_on "Create Project environment"

    assert_text "Project environment was successfully created"
    click_on "Back"
  end

  test "updating a Project environment" do
    visit project_environments_url
    click_on "Edit", match: :first

    fill_in "Is public", with: @project_environment.is_public
    fill_in "Name", with: @project_environment.name
    fill_in "Project", with: @project_environment.project_id
    click_on "Update Project environment"

    assert_text "Project environment was successfully updated"
    click_on "Back"
  end

  test "destroying a Project environment" do
    visit project_environments_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Project environment was successfully destroyed"
  end
end
