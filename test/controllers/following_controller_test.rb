require 'test_helper'

class FollowingControllerTest < ActionDispatch::IntegrationTest
  test "should get follow" do
    get following_follow_url
    assert_response :success
  end

end
