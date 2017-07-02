require 'test_helper'

class ProgramacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @programacion = programaciones(:one)
  end

  test "should get index" do
    get programaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_programacion_url
    assert_response :success
  end

  test "should create programacion" do
    assert_difference('Programacion.count') do
      post programaciones_url, params: { programacion: { cant: @programacion.cant, cliente: @programacion.cliente, empleado: @programacion.empleado, fecha: @programacion.fecha, fecha_entrega: @programacion.fecha_entrega, iva: @programacion.iva, num_progr: @programacion.num_progr, pieza: @programacion.pieza, prenda: @programacion.prenda, subtotal: @programacion.subtotal, talla: @programacion.talla, total: @programacion.total, total: @programacion.total, val_uni: @programacion.val_uni } }
    end

    assert_redirected_to programacion_url(Programacion.last)
  end

  test "should show programacion" do
    get programacion_url(@programacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_programacion_url(@programacion)
    assert_response :success
  end

  test "should update programacion" do
    patch programacion_url(@programacion), params: { programacion: { cant: @programacion.cant, cliente: @programacion.cliente, empleado: @programacion.empleado, fecha: @programacion.fecha, fecha_entrega: @programacion.fecha_entrega, iva: @programacion.iva, num_progr: @programacion.num_progr, pieza: @programacion.pieza, prenda: @programacion.prenda, subtotal: @programacion.subtotal, talla: @programacion.talla, total: @programacion.total, total: @programacion.total, val_uni: @programacion.val_uni } }
    assert_redirected_to programacion_url(@programacion)
  end

  test "should destroy programacion" do
    assert_difference('Programacion.count', -1) do
      delete programacion_url(@programacion)
    end

    assert_redirected_to programaciones_url
  end
end
