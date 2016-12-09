require 'test_helper'

class DojoControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get dojo_index_url
    assert_response :success
  end

  test "should get seattle" do
    get dojo_seattle_url
    assert_response :success
  end

end
