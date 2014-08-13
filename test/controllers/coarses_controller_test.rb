require 'test_helper'

class CoarsesControllerTest < ActionController::TestCase
  setup do
    @coarse = coarses(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coarses)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coarse" do
    assert_difference('Coarse.count') do
      post :create, coarse: {  }
    end

    assert_redirected_to coarse_path(assigns(:coarse))
  end

  test "should show coarse" do
    get :show, id: @coarse
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coarse
    assert_response :success
  end

  test "should update coarse" do
    patch :update, id: @coarse, coarse: {  }
    assert_redirected_to coarse_path(assigns(:coarse))
  end

  test "should destroy coarse" do
    assert_difference('Coarse.count', -1) do
      delete :destroy, id: @coarse
    end

    assert_redirected_to coarses_path
  end
end
