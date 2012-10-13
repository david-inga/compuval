require 'test_helper'

class CuentaPorPagarsControllerTest < ActionController::TestCase
  setup do
    @cuenta_por_pagar = cuenta_por_pagars(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:cuenta_por_pagars)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create cuenta_por_pagar" do
    assert_difference('CuentaPorPagar.count') do
      post :create, cuenta_por_pagar: { empresa: @cuenta_por_pagar.empresa, fechaEmision: @cuenta_por_pagar.fechaEmision, fechaVencimiento: @cuenta_por_pagar.fechaVencimiento, monto: @cuenta_por_pagar.monto, numeroDocumento: @cuenta_por_pagar.numeroDocumento }
    end

    assert_redirected_to cuenta_por_pagar_path(assigns(:cuenta_por_pagar))
  end

  test "should show cuenta_por_pagar" do
    get :show, id: @cuenta_por_pagar
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @cuenta_por_pagar
    assert_response :success
  end

  test "should update cuenta_por_pagar" do
    put :update, id: @cuenta_por_pagar, cuenta_por_pagar: { empresa: @cuenta_por_pagar.empresa, fechaEmision: @cuenta_por_pagar.fechaEmision, fechaVencimiento: @cuenta_por_pagar.fechaVencimiento, monto: @cuenta_por_pagar.monto, numeroDocumento: @cuenta_por_pagar.numeroDocumento }
    assert_redirected_to cuenta_por_pagar_path(assigns(:cuenta_por_pagar))
  end

  test "should destroy cuenta_por_pagar" do
    assert_difference('CuentaPorPagar.count', -1) do
      delete :destroy, id: @cuenta_por_pagar
    end

    assert_redirected_to cuenta_por_pagars_path
  end
end
