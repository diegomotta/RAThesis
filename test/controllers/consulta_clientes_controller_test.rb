require 'test_helper'

class ConsultaClientesControllerTest < ActionController::TestCase
  setup do
    @consulta_cliente = consulta_clientes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:consulta_clientes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create consulta_cliente" do
    assert_difference('ConsultaCliente.count') do
      post :create, consulta_cliente: { correo: @consulta_cliente.correo, descripcion: @consulta_cliente.descripcion, nombre: @consulta_cliente.nombre, telefono: @consulta_cliente.telefono }
    end

    assert_redirected_to consulta_cliente_path(assigns(:consulta_cliente))
  end

  test "should show consulta_cliente" do
    get :show, id: @consulta_cliente
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @consulta_cliente
    assert_response :success
  end

  test "should update consulta_cliente" do
    patch :update, id: @consulta_cliente, consulta_cliente: { correo: @consulta_cliente.correo, descripcion: @consulta_cliente.descripcion, nombre: @consulta_cliente.nombre, telefono: @consulta_cliente.telefono }
    assert_redirected_to consulta_cliente_path(assigns(:consulta_cliente))
  end

  test "should destroy consulta_cliente" do
    assert_difference('ConsultaCliente.count', -1) do
      delete :destroy, id: @consulta_cliente
    end

    assert_redirected_to consulta_clientes_path
  end
end
