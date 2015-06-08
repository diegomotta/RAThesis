require 'test_helper'

class NoticiaEmpresasControllerTest < ActionController::TestCase
  setup do
    @noticia_empresa = noticia_empresas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:noticia_empresas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create noticia_empresa" do
    assert_difference('NoticiaEmpresa.count') do
      post :create, noticia_empresa: { descripcion: @noticia_empresa.descripcion, empresa_id: @noticia_empresa.empresa_id, titulo: @noticia_empresa.titulo }
    end

    assert_redirected_to noticia_empresa_path(assigns(:noticia_empresa))
  end

  test "should show noticia_empresa" do
    get :show, id: @noticia_empresa
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @noticia_empresa
    assert_response :success
  end

  test "should update noticia_empresa" do
    patch :update, id: @noticia_empresa, noticia_empresa: { descripcion: @noticia_empresa.descripcion, empresa_id: @noticia_empresa.empresa_id, titulo: @noticia_empresa.titulo }
    assert_redirected_to noticia_empresa_path(assigns(:noticia_empresa))
  end

  test "should destroy noticia_empresa" do
    assert_difference('NoticiaEmpresa.count', -1) do
      delete :destroy, id: @noticia_empresa
    end

    assert_redirected_to noticia_empresas_path
  end
end
