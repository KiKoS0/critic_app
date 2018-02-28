require 'test_helper'

class ProfsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get profs_new_url
    assert_response :success
  end

end
