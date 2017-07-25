require 'test_helper'

class BookShelfControllerTest < ActionDispatch::IntegrationTest
  test "should get add_book" do
    get book_shelf_add_book_url
    assert_response :success
  end

end
