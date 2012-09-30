require 'test_helper'

class PostsControllerTest < ActionController::TestCase
  test "should get [all" do
    get :[all
    assert_response :success
  end

  test "should get item]" do
    get :item]
    assert_response :success
  end

end
