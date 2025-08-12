require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  test "invalid comment params render new with errors" do
    user = User.create!(email: "user@example.com", password: "password")
    sign_in user
    category = Category.create!(name: "Sports")
    city = City.create!(name: "Metropolis")
    group = Group.create!(title: "Group", description: "desc", user: user, category: category, city: city)
    post_record = Post.create!(content: "hello", user: user, group: group)

    assert_no_difference("Comment.count") do
      post post_comments_path(post_record), params: { comment: { content: "" } }
    end

    assert_response :success
    assert_template :new
    assert_select "#error_explanation"
  end
end
