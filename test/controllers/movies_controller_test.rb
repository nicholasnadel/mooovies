require 'test_helper'

class MoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get movies_index_url
    assert_response :success
  end

  test "should get show" do
    get movies_show_url
    assert_response :success
  end

  test "should get update" do
    get movies_update_url
    assert_response :success
  end

end
