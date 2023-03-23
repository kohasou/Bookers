require "test_helper"

class BooksControllerTest < ActionDispatch::IntegrationTest
  test "should get top2" do
    get books_top2_url
    assert_response :success
  end
end
