require 'test_helper'

class InformacionEmpresasControllerTest < ActionController::TestCase
  setup do
    @informacion_empresa = informacion_empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:informacion_empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create informacion_empresa" do
    assert_difference('InformacionEmpresa.count') do
      post :create, informacion_empresa: { empresa_id: @informacion_empresa.empresa_id, itemTitulo: @informacion_empresa.itemTitulo }
    end

    assert_redirected_to informacion_empresa_path(assigns(:informacion_empresa))
  end

  test "should show informacion_empresa" do
    get :show, id: @informacion_empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @informacion_empresa
    assert_response :success
  end

  test "should update informacion_empresa" do
    patch :update, id: @informacion_empresa, informacion_empresa: { empresa_id: @informacion_empresa.empresa_id, itemTitulo: @informacion_empresa.itemTitulo }
    assert_redirected_to informacion_empresa_path(assigns(:informacion_empresa))
  end

  test "should destroy informacion_empresa" do
    assert_difference('InformacionEmpresa.count', -1) do
      delete :destroy, id: @informacion_empresa
    end

    assert_redirected_to informacion_empresas_path
  end
end
