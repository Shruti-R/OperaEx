require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  test "should get set_layout" do
    get :set_layout
    assert_response :success
  end

end
