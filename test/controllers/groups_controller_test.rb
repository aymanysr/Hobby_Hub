require "test_helper"

class GroupsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @user = users(:one)
    @group = groups(:one)
  end

  test "should get index when signed in" do
    sign_in @user
    get groups_url
    assert_response :success
  end

  test "should redirect index when not signed in" do
    get groups_url
    assert_redirected_to new_user_session_path
  end

  test "should show group when signed in" do
    sign_in @user
    get group_url(@group)
    assert_response :success
  end

  test "should redirect show when not signed in" do
    get group_url(@group)
    assert_redirected_to new_user_session_path
  end
end
