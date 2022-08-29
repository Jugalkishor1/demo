require "test_helper"

class CommenttsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get commentts_index_url
    assert_response :success
  end
end
