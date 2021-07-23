require "test_helper"

class Napier::UsersControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get napier_users_index_url
    assert_response :success
  end

  test "should get new" do
    get napier_users_new_url
    assert_response :success
  end

  test "should get show" do
    get napier_users_show_url
    assert_response :success
  end
end
