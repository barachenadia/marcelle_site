require 'test_helper'

class AppControllerTest < ActionController::TestCase
  test "should get presentation" do
    get :presentation
    assert_response :success
  end

  test "should get concert" do
    get :concert
    assert_response :success
  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

end
