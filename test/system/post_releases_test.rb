require "application_system_test_case"

class PostReleasesTest < ApplicationSystemTestCase
  setup do
    @post_release = post_releases(:one)
  end

  test "visiting the index" do
    visit post_releases_url
    assert_selector "h1", text: "Post Releases"
  end

  test "creating a Post release" do
    visit post_releases_url
    click_on "New Post Release"

    fill_in "Post", with: @post_release.post_id
    fill_in "Project environment", with: @post_release.project_environment_id
    click_on "Create Post release"

    assert_text "Post release was successfully created"
    click_on "Back"
  end

  test "updating a Post release" do
    visit post_releases_url
    click_on "Edit", match: :first

    fill_in "Post", with: @post_release.post_id
    fill_in "Project environment", with: @post_release.project_environment_id
    click_on "Update Post release"

    assert_text "Post release was successfully updated"
    click_on "Back"
  end

  test "destroying a Post release" do
    visit post_releases_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Post release was successfully destroyed"
  end
end
