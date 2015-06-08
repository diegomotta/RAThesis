require 'test_helper'

class GaleriaProcesosControllerTest < ActionController::TestCase
  setup do
    @galeria_proceso = galeria_procesos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeria_procesos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galeria_proceso" do
    assert_difference('GaleriaProceso.count') do
      post :create, galeria_proceso: { descrición: @galeria_proceso.descrición, título: @galeria_proceso.título }
    end

    assert_redirected_to galeria_proceso_path(assigns(:galeria_proceso))
  end

  test "should show galeria_proceso" do
    get :show, id: @galeria_proceso
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galeria_proceso
    assert_response :success
  end

  test "should update galeria_proceso" do
    patch :update, id: @galeria_proceso, galeria_proceso: { descrición: @galeria_proceso.descrición, título: @galeria_proceso.título }
    assert_redirected_to galeria_proceso_path(assigns(:galeria_proceso))
  end

  test "should destroy galeria_proceso" do
    assert_difference('GaleriaProceso.count', -1) do
      delete :destroy, id: @galeria_proceso
    end

    assert_redirected_to galeria_procesos_path
  end
end
