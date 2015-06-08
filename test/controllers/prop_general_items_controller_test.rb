require 'test_helper'

class PropGeneralItemsControllerTest < ActionController::TestCase
  setup do
    @prop_general_item = prop_general_items(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:prop_general_items)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prop_general_item" do
    assert_difference('PropGeneralItem.count') do
      post :create, prop_general_item: { descripción: @prop_general_item.descripción, item: @prop_general_item.item }
    end

    assert_redirected_to prop_general_item_path(assigns(:prop_general_item))
  end

  test "should show prop_general_item" do
    get :show, id: @prop_general_item
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prop_general_item
    assert_response :success
  end

  test "should update prop_general_item" do
    patch :update, id: @prop_general_item, prop_general_item: { descripción: @prop_general_item.descripción, item: @prop_general_item.item }
    assert_redirected_to prop_general_item_path(assigns(:prop_general_item))
  end

  test "should destroy prop_general_item" do
    assert_difference('PropGeneralItem.count', -1) do
      delete :destroy, id: @prop_general_item
    end

    assert_redirected_to prop_general_items_path
  end
end
