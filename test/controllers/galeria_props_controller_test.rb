require 'test_helper'

class GaleriaPropsControllerTest < ActionController::TestCase
  setup do
    @galeria_prop = galeria_props(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeria_props)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galeria_prop" do
    assert_difference('GaleriaProp.count') do
      post :create, galeria_prop: {  }
    end

    assert_redirected_to galeria_prop_path(assigns(:galeria_prop))
  end

  test "should show galeria_prop" do
    get :show, id: @galeria_prop
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galeria_prop
    assert_response :success
  end

  test "should update galeria_prop" do
    patch :update, id: @galeria_prop, galeria_prop: {  }
    assert_redirected_to galeria_prop_path(assigns(:galeria_prop))
  end

  test "should destroy galeria_prop" do
    assert_difference('GaleriaProp.count', -1) do
      delete :destroy, id: @galeria_prop
    end

    assert_redirected_to galeria_props_path
  end
end
