require "application_system_test_case"

class BlogsTest < ApplicationSystemTestCase
  setup do
    @blog = blogs(:one)
  end

  test "visiting the index" do
    visit blogs_url
    assert_selector "h1", text: "Blogs"
  end

  test "should create Blog" do
    visit blogs_url
    click_on "New Blog"

    fill_in "Content", with: @blog.content
    fill_in "Title", with: @blog.title
    click_on "Create Blog"

    assert_text "Blog was successfully created"
    click_on "Back"
  end

  test "should update Blog" do
    visit blogs_url
    click_on "Edit", match: :first

    fill_in "Content", with: @blog.content
    fill_in "Title", with: @blog.title
    click_on "Update Blog"

    assert_text "Blog was successfully updated"
    click_on "Back"
  end

  test "should destroy Blog" do
    visit blogs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Blog was successfully destroyed"
  end
end
