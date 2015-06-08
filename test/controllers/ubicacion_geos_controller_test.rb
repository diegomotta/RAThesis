require 'test_helper'

class UbicacionGeosControllerTest < ActionController::TestCase
  setup do
    @ubicacion_geo = ubicacion_geos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:ubicacion_geos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create ubicacion_geo" do
    assert_difference('UbicacionGeo.count') do
      post :create, ubicacion_geo: { descripcion: @ubicacion_geo.descripcion, empresa_id: @ubicacion_geo.empresa_id, titulo: @ubicacion_geo.titulo }
    end

    assert_redirected_to ubicacion_geo_path(assigns(:ubicacion_geo))
  end

  test "should show ubicacion_geo" do
    get :show, id: @ubicacion_geo
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @ubicacion_geo
    assert_response :success
  end

  test "should update ubicacion_geo" do
    patch :update, id: @ubicacion_geo, ubicacion_geo: { descripcion: @ubicacion_geo.descripcion, empresa_id: @ubicacion_geo.empresa_id, titulo: @ubicacion_geo.titulo }
    assert_redirected_to ubicacion_geo_path(assigns(:ubicacion_geo))
  end

  test "should destroy ubicacion_geo" do
    assert_difference('UbicacionGeo.count', -1) do
      delete :destroy, id: @ubicacion_geo
    end

    assert_redirected_to ubicacion_geos_path
  end
end
