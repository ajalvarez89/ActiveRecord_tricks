require 'test_helper'

class StatusesControllerTest < ActionDispatch::IntegrationTest
  test "should get destroy" do
    get statuses_destroy_url
    assert_response :success
  end

end
