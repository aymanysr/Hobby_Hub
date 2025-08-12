require "test_helper"

class GroupsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "invalid group params renders new with errors" do
    user = User.create!(email: "user@example.com", password: "password")
    sign_in user
    category = Category.create!(name: "Sports")
    city = City.create!(name: "Metropolis")

    assert_no_difference("Group.count") do
      post groups_path, params: { group: { title: "", description: "desc", category_id: category.id, city_id: city.id } }
    end

    assert_response :success
    assert_template :new
    assert_select "#error_explanation"
  end
end
