require 'test_helper'

class SearchControllerTest < ActionDispatch::IntegrationTest
  test "should get search_pro" do
    get search_search_pro_url
    assert_response :success
  end

end
