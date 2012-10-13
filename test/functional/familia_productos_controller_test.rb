require 'test_helper'

class FamiliaProductosControllerTest < ActionController::TestCase
  setup do
    @familia_producto = familia_productos(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:familia_productos)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create familia_producto" do
    assert_difference('FamiliaProducto.count') do
      post :create, familia_producto: { descripcion: @familia_producto.descripcion, nombre: @familia_producto.nombre }
    end

    assert_redirected_to familia_producto_path(assigns(:familia_producto))
  end

  test "should show familia_producto" do
    get :show, id: @familia_producto
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @familia_producto
    assert_response :success
  end

  test "should update familia_producto" do
    put :update, id: @familia_producto, familia_producto: { descripcion: @familia_producto.descripcion, nombre: @familia_producto.nombre }
    assert_redirected_to familia_producto_path(assigns(:familia_producto))
  end

  test "should destroy familia_producto" do
    assert_difference('FamiliaProducto.count', -1) do
      delete :destroy, id: @familia_producto
    end

    assert_redirected_to familia_productos_path
  end
end
