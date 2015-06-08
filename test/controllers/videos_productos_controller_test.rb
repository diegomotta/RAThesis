require 'test_helper'

class VideosProductosControllerTest < ActionController::TestCase
  setup do
    @videos_producto = videos_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:videos_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create videos_producto" do
    assert_difference('VideosProducto.count') do
      post :create, videos_producto: { descripcion: @videos_producto.descripcion, titulo: @videos_producto.titulo, url: @videos_producto.url }
    end

    assert_redirected_to videos_producto_path(assigns(:videos_producto))
  end

  test "should show videos_producto" do
    get :show, id: @videos_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @videos_producto
    assert_response :success
  end

  test "should update videos_producto" do
    patch :update, id: @videos_producto, videos_producto: { descripcion: @videos_producto.descripcion, titulo: @videos_producto.titulo, url: @videos_producto.url }
    assert_redirected_to videos_producto_path(assigns(:videos_producto))
  end

  test "should destroy videos_producto" do
    assert_difference('VideosProducto.count', -1) do
      delete :destroy, id: @videos_producto
    end

    assert_redirected_to videos_productos_path
  end
end
