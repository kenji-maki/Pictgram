require 'test_helper'

class TameshisControllerTest < ActionDispatch::IntegrationTest
  test "should get sononi" do
    get tameshis_sononi_url
    assert_response :success
  end

end
