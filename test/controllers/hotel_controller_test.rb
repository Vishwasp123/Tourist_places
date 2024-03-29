require "test_helper"

class HotelControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get hotel_create_url
    assert_response :success
  end

  test "should get show" do
    get hotel_show_url
    assert_response :success
  end
end
