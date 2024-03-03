require "test_helper"

class BBlogsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get b_blogs_home_url
    assert_response :success
  end
end
