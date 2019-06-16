require 'test_helper'

class ProjectEnvironmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @project_environment = project_environments(:one)
  end

  test "should get index" do
    get project_environments_url
    assert_response :success
  end

  test "should get new" do
    get new_project_environment_url
    assert_response :success
  end

  test "should create project_environment" do
    assert_difference('ProjectEnvironment.count') do
      post project_environments_url, params: { project_environment: { is_public: @project_environment.is_public, name: @project_environment.name, project_id: @project_environment.project_id } }
    end

    assert_redirected_to project_environment_url(ProjectEnvironment.last)
  end

  test "should show project_environment" do
    get project_environment_url(@project_environment)
    assert_response :success
  end

  test "should get edit" do
    get edit_project_environment_url(@project_environment)
    assert_response :success
  end

  test "should update project_environment" do
    patch project_environment_url(@project_environment), params: { project_environment: { is_public: @project_environment.is_public, name: @project_environment.name, project_id: @project_environment.project_id } }
    assert_redirected_to project_environment_url(@project_environment)
  end

  test "should destroy project_environment" do
    assert_difference('ProjectEnvironment.count', -1) do
      delete project_environment_url(@project_environment)
    end

    assert_redirected_to project_environments_url
  end
end
