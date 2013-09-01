require 'test_helper'

class CountdownsControllerTest < ActionController::TestCase
  setup do
    @countdown = countdowns(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:countdowns)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create countdown" do
    assert_difference('Countdown.count') do
      post :create, countdown: { link: @countdown.link, picture: @countdown.picture, time: @countdown.time, title: @countdown.title }
    end

    assert_redirected_to countdown_path(assigns(:countdown))
  end

  test "should show countdown" do
    get :show, id: @countdown
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @countdown
    assert_response :success
  end

  test "should update countdown" do
    patch :update, id: @countdown, countdown: { link: @countdown.link, picture: @countdown.picture, time: @countdown.time, title: @countdown.title }
    assert_redirected_to countdown_path(assigns(:countdown))
  end

  test "should destroy countdown" do
    assert_difference('Countdown.count', -1) do
      delete :destroy, id: @countdown
    end

    assert_redirected_to countdowns_path
  end
end
