require 'test_helper'

class ItemProductosControllerTest < ActionController::TestCase
  setup do
    @item_producto = item_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_producto" do
    assert_difference('ItemProducto.count') do
      post :create, item_producto: { descripción: @item_producto.descripción, producto_id: @item_producto.producto_id, titulo: @item_producto.titulo }
    end

    assert_redirected_to item_producto_path(assigns(:item_producto))
  end

  test "should show item_producto" do
    get :show, id: @item_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_producto
    assert_response :success
  end

  test "should update item_producto" do
    patch :update, id: @item_producto, item_producto: { descripción: @item_producto.descripción, producto_id: @item_producto.producto_id, titulo: @item_producto.titulo }
    assert_redirected_to item_producto_path(assigns(:item_producto))
  end

  test "should destroy item_producto" do
    assert_difference('ItemProducto.count', -1) do
      delete :destroy, id: @item_producto
    end

    assert_redirected_to item_productos_path
  end
end
