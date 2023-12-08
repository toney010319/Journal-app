require "test_helper"

class PagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get categories_path
    assert_response :success
  end

  test "should get about" do
    get root_path
    assert_response :success
  end
end
