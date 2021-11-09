require "test_helper"

class NameControllerTest < ActionDispatch::IntegrationTest
  test "should get name" do
    get name_name_url
    assert_response :success
  end
end
