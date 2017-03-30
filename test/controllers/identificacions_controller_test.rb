require 'test_helper'

class IdentificacionsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @identificacion = identificacions(:one)
  end

  test "should get index" do
    get identificacions_url
    assert_response :success
  end

  test "should get new" do
    get new_identificacion_url
    assert_response :success
  end

  test "should create identificacion" do
    assert_difference('Identificacion.count') do
      post identificacions_url, params: { identificacion: { bloque: @identificacion.bloque, delimitaciondeapartados: @identificacion.delimitaciondeapartados, direcciongrupo: @identificacion.direcciongrupo, estado: @identificacion.estado, estadoprovidencia: @identificacion.estadoprovidencia, fechacomunicacion: @identificacion.fechacomunicacion, fechaexpedicion: @identificacion.fechaexpedicion, lugardeinfluencia: @identificacion.lugardeinfluencia, lugarexpedicion: @identificacion.lugarexpedicion, magistradoponente: @identificacion.magistradoponente, nombreyaliaspost: @identificacion.nombreyaliaspost, ordenexhorto: @identificacion.ordenexhorto, radicado: @identificacion.radicado, recomendaciones: @identificacion.recomendaciones, sala: @identificacion.sala, secomunico: @identificacion.secomunico, segundainstancia: @identificacion.segundainstancia, tiempodeterminado: @identificacion.tiempodeterminado, tipodecision: @identificacion.tipodecision, tribunalquecomunica: @identificacion.tribunalquecomunica } }
    end

    assert_redirected_to identificacion_url(Identificacion.last)
  end

  test "should show identificacion" do
    get identificacion_url(@identificacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_identificacion_url(@identificacion)
    assert_response :success
  end

  test "should update identificacion" do
    patch identificacion_url(@identificacion), params: { identificacion: { bloque: @identificacion.bloque, delimitaciondeapartados: @identificacion.delimitaciondeapartados, direcciongrupo: @identificacion.direcciongrupo, estado: @identificacion.estado, estadoprovidencia: @identificacion.estadoprovidencia, fechacomunicacion: @identificacion.fechacomunicacion, fechaexpedicion: @identificacion.fechaexpedicion, lugardeinfluencia: @identificacion.lugardeinfluencia, lugarexpedicion: @identificacion.lugarexpedicion, magistradoponente: @identificacion.magistradoponente, nombreyaliaspost: @identificacion.nombreyaliaspost, ordenexhorto: @identificacion.ordenexhorto, radicado: @identificacion.radicado, recomendaciones: @identificacion.recomendaciones, sala: @identificacion.sala, secomunico: @identificacion.secomunico, segundainstancia: @identificacion.segundainstancia, tiempodeterminado: @identificacion.tiempodeterminado, tipodecision: @identificacion.tipodecision, tribunalquecomunica: @identificacion.tribunalquecomunica } }
    assert_redirected_to identificacion_url(@identificacion)
  end

  test "should destroy identificacion" do
    assert_difference('Identificacion.count', -1) do
      delete identificacion_url(@identificacion)
    end

    assert_redirected_to identificacions_url
  end
end
