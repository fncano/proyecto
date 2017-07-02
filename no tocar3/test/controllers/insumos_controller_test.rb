require 'test_helper'

class InsumosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insumo = insumos(:one)
  end

  test "should get index" do
    get insumos_url
    assert_response :success
  end

  test "should get new" do
    get new_insumo_url
    assert_response :success
  end

  test "should create insumo" do
    assert_difference('Insumo.count') do
      post insumos_url, params: { insumo: { cant: @insumo.cant, detalle: @insumo.detalle, documento: @insumo.documento, empleado: @insumo.empleado, fecha: @insumo.fecha, iva: @insumo.iva, num_fact: @insumo.num_fact, numero: @insumo.numero, proveedor: @insumo.proveedor, subtotal: @insumo.subtotal, total: @insumo.total, total: @insumo.total, val_uni: @insumo.val_uni } }
    end

    assert_redirected_to insumo_url(Insumo.last)
  end

  test "should show insumo" do
    get insumo_url(@insumo)
    assert_response :success
  end

  test "should get edit" do
    get edit_insumo_url(@insumo)
    assert_response :success
  end

  test "should update insumo" do
    patch insumo_url(@insumo), params: { insumo: { cant: @insumo.cant, detalle: @insumo.detalle, documento: @insumo.documento, empleado: @insumo.empleado, fecha: @insumo.fecha, iva: @insumo.iva, num_fact: @insumo.num_fact, numero: @insumo.numero, proveedor: @insumo.proveedor, subtotal: @insumo.subtotal, total: @insumo.total, total: @insumo.total, val_uni: @insumo.val_uni } }
    assert_redirected_to insumo_url(@insumo)
  end

  test "should destroy insumo" do
    assert_difference('Insumo.count', -1) do
      delete insumo_url(@insumo)
    end

    assert_redirected_to insumos_url
  end
end
