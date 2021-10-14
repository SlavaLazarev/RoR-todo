require "test_helper"

class TodoControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get todo_new_url
    assert_response :success
  end

  test "should get edit" do
    get todo_edit_url
    assert_response :success
  end
end
