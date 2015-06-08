require 'test_helper'

class PropGeneralsControllerTest < ActionController::TestCase
  setup do
    @prop_general = prop_generals(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prop_generals)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prop_general" do
    assert_difference('PropGeneral.count') do
      post :create, prop_general: { descripción: @prop_general.descripción }
    end

    assert_redirected_to prop_general_path(assigns(:prop_general))
  end

  test "should show prop_general" do
    get :show, id: @prop_general
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prop_general
    assert_response :success
  end

  test "should update prop_general" do
    patch :update, id: @prop_general, prop_general: { descripción: @prop_general.descripción }
    assert_redirected_to prop_general_path(assigns(:prop_general))
  end

  test "should destroy prop_general" do
    assert_difference('PropGeneral.count', -1) do
      delete :destroy, id: @prop_general
    end

    assert_redirected_to prop_generals_path
  end
end
