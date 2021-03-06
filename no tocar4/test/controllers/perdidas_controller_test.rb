require 'test_helper'

class PerdidasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @perdida = perdidas(:one)
  end

  test "should get index" do
    get perdidas_url
    assert_response :success
  end

  test "should get new" do
    get new_perdida_url
    assert_response :success
  end

  test "should create perdida" do
    assert_difference('Perdida.count') do
      post perdidas_url, params: { perdida: { cant: @perdida.cant, cliente: @perdida.cliente, empleado: @perdida.empleado, fecha: @perdida.fecha, fecha_entrega: @perdida.fecha_entrega, iva: @perdida.iva, num_doc: @perdida.num_doc, pieza: @perdida.pieza, prenda: @perdida.prenda, subtotal: @perdida.subtotal, talla: @perdida.talla, total: @perdida.total, total: @perdida.total, val_uni: @perdida.val_uni } }
    end

    assert_redirected_to perdida_url(Perdida.last)
  end

  test "should show perdida" do
    get perdida_url(@perdida)
    assert_response :success
  end

  test "should get edit" do
    get edit_perdida_url(@perdida)
    assert_response :success
  end

  test "should update perdida" do
    patch perdida_url(@perdida), params: { perdida: { cant: @perdida.cant, cliente: @perdida.cliente, empleado: @perdida.empleado, fecha: @perdida.fecha, fecha_entrega: @perdida.fecha_entrega, iva: @perdida.iva, num_doc: @perdida.num_doc, pieza: @perdida.pieza, prenda: @perdida.prenda, subtotal: @perdida.subtotal, talla: @perdida.talla, total: @perdida.total, total: @perdida.total, val_uni: @perdida.val_uni } }
    assert_redirected_to perdida_url(@perdida)
  end

  test "should destroy perdida" do
    assert_difference('Perdida.count', -1) do
      delete perdida_url(@perdida)
    end

    assert_redirected_to perdidas_url
  end
end
