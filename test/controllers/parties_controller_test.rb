require 'test_helper'

class PartiesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get parties_create_url
    assert_response :success
  end

  test "should get destroy" do
    get parties_destroy_url
    assert_response :success
  end

end
