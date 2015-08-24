require 'test_helper'

class TflsControllerTest < ActionController::TestCase
  setup do
    @tfl = tfls(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:tfls)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create tfl" do
    assert_difference('Tfl.count') do
      post :create, tfl: { name: @tfl.name }
    end

    assert_redirected_to tfl_path(assigns(:tfl))
  end

  test "should show tfl" do
    get :show, id: @tfl
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @tfl
    assert_response :success
  end

  test "should update tfl" do
    patch :update, id: @tfl, tfl: { name: @tfl.name }
    assert_redirected_to tfl_path(assigns(:tfl))
  end

  test "should destroy tfl" do
    assert_difference('Tfl.count', -1) do
      delete :destroy, id: @tfl
    end

    assert_redirected_to tfls_path
  end
end
