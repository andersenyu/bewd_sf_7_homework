require 'test_helper'

class ArtistsControllerTest < ActionController::TestCase
  test "should get name:string" do
    get :name:string
    assert_response :success
  end

  test "should get photo:string" do
    get :photo:string
    assert_response :success
  end

end
