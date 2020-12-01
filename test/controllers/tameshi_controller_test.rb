require 'test_helper'

class TameshiControllerTest < ActionDispatch::IntegrationTest
  test "should get sononi" do
    get tameshi_sononi_url
    assert_response :success
  end

end
