require 'test_helper'

class HospitalControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get hospital_home_url
    assert_response :success
  end

end
