require 'test_helper'

class PostReleasesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @post_release = post_releases(:one)
  end

  test "should get index" do
    get post_releases_url
    assert_response :success
  end

  test "should get new" do
    get new_post_release_url
    assert_response :success
  end

  test "should create post_release" do
    assert_difference('PostRelease.count') do
      post post_releases_url, params: { post_release: { post_id: @post_release.post_id, project_environment_id: @post_release.project_environment_id } }
    end

    assert_redirected_to post_release_url(PostRelease.last)
  end

  test "should show post_release" do
    get post_release_url(@post_release)
    assert_response :success
  end

  test "should get edit" do
    get edit_post_release_url(@post_release)
    assert_response :success
  end

  test "should update post_release" do
    patch post_release_url(@post_release), params: { post_release: { post_id: @post_release.post_id, project_environment_id: @post_release.project_environment_id } }
    assert_redirected_to post_release_url(@post_release)
  end

  test "should destroy post_release" do
    assert_difference('PostRelease.count', -1) do
      delete post_release_url(@post_release)
    end

    assert_redirected_to post_releases_url
  end
end
