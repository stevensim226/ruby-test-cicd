require "test_helper"

class CarsControllerTest < ActionDispatch::IntegrationTest
  test "should get homepage" do
    get cars_homepage_url
    assert_response :success
  end
end
