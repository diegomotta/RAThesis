require 'test_helper'

class GaleriaImagenesControllerTest < ActionController::TestCase
  setup do
    @galeria_imagene = galeria_imagenes(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeria_imagenes)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galeria_imagene" do
    assert_difference('GaleriaImagene.count') do
      post :create, galeria_imagene: { descripcion: @galeria_imagene.descripcion, titulo: @galeria_imagene.titulo }
    end

    assert_redirected_to galeria_imagene_path(assigns(:galeria_imagene))
  end

  test "should show galeria_imagene" do
    get :show, id: @galeria_imagene
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galeria_imagene
    assert_response :success
  end

  test "should update galeria_imagene" do
    patch :update, id: @galeria_imagene, galeria_imagene: { descripcion: @galeria_imagene.descripcion, titulo: @galeria_imagene.titulo }
    assert_redirected_to galeria_imagene_path(assigns(:galeria_imagene))
  end

  test "should destroy galeria_imagene" do
    assert_difference('GaleriaImagene.count', -1) do
      delete :destroy, id: @galeria_imagene
    end

    assert_redirected_to galeria_imagenes_path
  end
end
