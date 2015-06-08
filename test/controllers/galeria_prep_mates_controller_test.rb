require 'test_helper'

class GaleriaPrepMatesControllerTest < ActionController::TestCase
  setup do
    @galeria_prep_mate = galeria_prep_mates(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:galeria_prep_mates)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create galeria_prep_mate" do
    assert_difference('GaleriaPrepMate.count') do
      post :create, galeria_prep_mate: { descrición: @galeria_prep_mate.descrición, título: @galeria_prep_mate.título }
    end

    assert_redirected_to galeria_prep_mate_path(assigns(:galeria_prep_mate))
  end

  test "should show galeria_prep_mate" do
    get :show, id: @galeria_prep_mate
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @galeria_prep_mate
    assert_response :success
  end

  test "should update galeria_prep_mate" do
    patch :update, id: @galeria_prep_mate, galeria_prep_mate: { descrición: @galeria_prep_mate.descrición, título: @galeria_prep_mate.título }
    assert_redirected_to galeria_prep_mate_path(assigns(:galeria_prep_mate))
  end

  test "should destroy galeria_prep_mate" do
    assert_difference('GaleriaPrepMate.count', -1) do
      delete :destroy, id: @galeria_prep_mate
    end

    assert_redirected_to galeria_prep_mates_path
  end
end
