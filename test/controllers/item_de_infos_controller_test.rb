require 'test_helper'

class ItemDeInfosControllerTest < ActionController::TestCase
  setup do
    @item_de_info = item_de_infos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:item_de_infos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create item_de_info" do
    assert_difference('ItemDeInfo.count') do
      post :create, item_de_info: { descripcion: @item_de_info.descripcion, empresa_id: @item_de_info.empresa_id, titulo: @item_de_info.titulo }
    end

    assert_redirected_to item_de_info_path(assigns(:item_de_info))
  end

  test "should show item_de_info" do
    get :show, id: @item_de_info
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @item_de_info
    assert_response :success
  end

  test "should update item_de_info" do
    patch :update, id: @item_de_info, item_de_info: { descripcion: @item_de_info.descripcion, empresa_id: @item_de_info.empresa_id, titulo: @item_de_info.titulo }
    assert_redirected_to item_de_info_path(assigns(:item_de_info))
  end

  test "should destroy item_de_info" do
    assert_difference('ItemDeInfo.count', -1) do
      delete :destroy, id: @item_de_info
    end

    assert_redirected_to item_de_infos_path
  end
end
