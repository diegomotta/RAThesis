require 'test_helper'

class PropEspecificasControllerTest < ActionController::TestCase
  setup do
    @prop_especifica = prop_especificas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prop_especificas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prop_especifica" do
    assert_difference('PropEspecifica.count') do
      post :create, prop_especifica: { string: @prop_especifica.string, string: @prop_especifica.string }
    end

    assert_redirected_to prop_especifica_path(assigns(:prop_especifica))
  end

  test "should show prop_especifica" do
    get :show, id: @prop_especifica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prop_especifica
    assert_response :success
  end

  test "should update prop_especifica" do
    patch :update, id: @prop_especifica, prop_especifica: { string: @prop_especifica.string, string: @prop_especifica.string }
    assert_redirected_to prop_especifica_path(assigns(:prop_especifica))
  end

  test "should destroy prop_especifica" do
    assert_difference('PropEspecifica.count', -1) do
      delete :destroy, id: @prop_especifica
    end

    assert_redirected_to prop_especificas_path
  end
end
