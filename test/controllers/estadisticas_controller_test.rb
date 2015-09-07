require 'test_helper'

class EstadisticasControllerTest < ActionController::TestCase
  setup do
    @estadistica = estadisticas(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:estadisticas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create estadistica" do
    assert_difference('Estadistica.count') do
      post :create, estadistica: { califproducto: @estadistica.califproducto, cambiodeproducto: @estadistica.cambiodeproducto, cuantoconsumo: @estadistica.cuantoconsumo, disponibleproducto: @estadistica.disponibleproducto, enteroprod: @estadistica.enteroprod, imagenempresareg: @estadistica.imagenempresareg, justifprod: @estadistica.justifprod, otroproducto: @estadistica.otroproducto, otrosabor: @estadistica.otrosabor, precio: @estadistica.precio, recomendacion: @estadistica.recomendacion, saboredad: @estadistica.saboredad, sabortoman: @estadistica.sabortoman, yerbamedicinal: @estadistica.yerbamedicinal }
    end

    assert_redirected_to estadistica_path(assigns(:estadistica))
  end

  test "should show estadistica" do
    get :show, id: @estadistica
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @estadistica
    assert_response :success
  end

  test "should update estadistica" do
    patch :update, id: @estadistica, estadistica: { califproducto: @estadistica.califproducto, cambiodeproducto: @estadistica.cambiodeproducto, cuantoconsumo: @estadistica.cuantoconsumo, disponibleproducto: @estadistica.disponibleproducto, enteroprod: @estadistica.enteroprod, imagenempresareg: @estadistica.imagenempresareg, justifprod: @estadistica.justifprod, otroproducto: @estadistica.otroproducto, otrosabor: @estadistica.otrosabor, precio: @estadistica.precio, recomendacion: @estadistica.recomendacion, saboredad: @estadistica.saboredad, sabortoman: @estadistica.sabortoman, yerbamedicinal: @estadistica.yerbamedicinal }
    assert_redirected_to estadistica_path(assigns(:estadistica))
  end

  test "should destroy estadistica" do
    assert_difference('Estadistica.count', -1) do
      delete :destroy, id: @estadistica
    end

    assert_redirected_to estadisticas_path
  end
end
