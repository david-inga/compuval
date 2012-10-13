require 'test_helper'

class CuentaPorCobrarsControllerTest < ActionController::TestCase
  setup do
    @cuenta_por_cobrar = cuenta_por_cobrars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuenta_por_cobrars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuenta_por_cobrar" do
    assert_difference('CuentaPorCobrar.count') do
      post :create, cuenta_por_cobrar: { empresa: @cuenta_por_cobrar.empresa, fechaEmision: @cuenta_por_cobrar.fechaEmision, fechaVencimiento: @cuenta_por_cobrar.fechaVencimiento, monto: @cuenta_por_cobrar.monto, numeroDocumento: @cuenta_por_cobrar.numeroDocumento }
    end

    assert_redirected_to cuenta_por_cobrar_path(assigns(:cuenta_por_cobrar))
  end

  test "should show cuenta_por_cobrar" do
    get :show, id: @cuenta_por_cobrar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuenta_por_cobrar
    assert_response :success
  end

  test "should update cuenta_por_cobrar" do
    put :update, id: @cuenta_por_cobrar, cuenta_por_cobrar: { empresa: @cuenta_por_cobrar.empresa, fechaEmision: @cuenta_por_cobrar.fechaEmision, fechaVencimiento: @cuenta_por_cobrar.fechaVencimiento, monto: @cuenta_por_cobrar.monto, numeroDocumento: @cuenta_por_cobrar.numeroDocumento }
    assert_redirected_to cuenta_por_cobrar_path(assigns(:cuenta_por_cobrar))
  end

  test "should destroy cuenta_por_cobrar" do
    assert_difference('CuentaPorCobrar.count', -1) do
      delete :destroy, id: @cuenta_por_cobrar
    end

    assert_redirected_to cuenta_por_cobrars_path
  end
end
