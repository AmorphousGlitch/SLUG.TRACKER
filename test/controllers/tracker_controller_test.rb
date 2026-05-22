require "test_helper"

class TrackerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get tracker_index_url
    assert_response :success
  end

  test "should get log_lap" do
    get tracker_log_lap_url
    assert_response :success
  end
end
