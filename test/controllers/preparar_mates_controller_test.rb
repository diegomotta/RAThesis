require 'test_helper'

class PrepararMatesControllerTest < ActionController::TestCase
  setup do
    @preparar_mate = preparar_mates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preparar_mates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create preparar_mate" do
    assert_difference('PrepararMate.count') do
      post :create, preparar_mate: { descrición: @preparar_mate.descrición, título: @preparar_mate.título }
    end

    assert_redirected_to preparar_mate_path(assigns(:preparar_mate))
  end

  test "should show preparar_mate" do
    get :show, id: @preparar_mate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @preparar_mate
    assert_response :success
  end

  test "should update preparar_mate" do
    patch :update, id: @preparar_mate, preparar_mate: { descrición: @preparar_mate.descrición, título: @preparar_mate.título }
    assert_redirected_to preparar_mate_path(assigns(:preparar_mate))
  end

  test "should destroy preparar_mate" do
    assert_difference('PrepararMate.count', -1) do
      delete :destroy, id: @preparar_mate
    end

    assert_redirected_to preparar_mates_path
  end
end
