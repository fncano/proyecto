require 'test_helper'

class ProduccionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @produccion = producciones(:one)
  end

  test "should get index" do
    get producciones_url
    assert_response :success
  end

  test "should get new" do
    get new_produccion_url
    assert_response :success
  end

  test "should create produccion" do
    assert_difference('Produccion.count') do
      post producciones_url, params: { produccion: { cant: @produccion.cant, cliente: @produccion.cliente, empleado: @produccion.empleado, fecha: @produccion.fecha, fecha_entre: @produccion.fecha_entre, iva: @produccion.iva, num_fact: @produccion.num_fact, pieza: @produccion.pieza, prenda: @produccion.prenda, subtotal: @produccion.subtotal, talla: @produccion.talla, total: @produccion.total, total: @produccion.total, val_uni: @produccion.val_uni } }
    end

    assert_redirected_to produccion_url(Produccion.last)
  end

  test "should show produccion" do
    get produccion_url(@produccion)
    assert_response :success
  end

  test "should get edit" do
    get edit_produccion_url(@produccion)
    assert_response :success
  end

  test "should update produccion" do
    patch produccion_url(@produccion), params: { produccion: { cant: @produccion.cant, cliente: @produccion.cliente, empleado: @produccion.empleado, fecha: @produccion.fecha, fecha_entre: @produccion.fecha_entre, iva: @produccion.iva, num_fact: @produccion.num_fact, pieza: @produccion.pieza, prenda: @produccion.prenda, subtotal: @produccion.subtotal, talla: @produccion.talla, total: @produccion.total, total: @produccion.total, val_uni: @produccion.val_uni } }
    assert_redirected_to produccion_url(@produccion)
  end

  test "should destroy produccion" do
    assert_difference('Produccion.count', -1) do
      delete produccion_url(@produccion)
    end

    assert_redirected_to producciones_url
  end
end
