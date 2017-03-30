require 'test_helper'

class CasosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @caso = casos(:one)
  end

  test "should get index" do
    get casos_url
    assert_response :success
  end

  test "should get new" do
    get new_caso_url
    assert_response :success
  end

  test "should create caso" do
    assert_difference('Caso.count') do
      post casos_url, params: { caso: { bloque: @caso.bloque, delimitaciondeapartados: @caso.delimitaciondeapartados, direcciongrupo: @caso.direcciongrupo, estado: @caso.estado, estado: @caso.estado, estadoprovidencia: @caso.estadoprovidencia, fechacomunicacion: @caso.fechacomunicacion, fechaexpedicion: @caso.fechaexpedicion, lugardeinfluencia: @caso.lugardeinfluencia, lugarexpedicion: @caso.lugarexpedicion, magistradoponente: @caso.magistradoponente, nombreimplicado: @caso.nombreimplicado, nombreyaliaspost: @caso.nombreyaliaspost, ordenexhorto: @caso.ordenexhorto, radicado: @caso.radicado, radicado: @caso.radicado, recomendaciones: @caso.recomendaciones, sala: @caso.sala, secomunico: @caso.secomunico, segundainstancia: @caso.segundainstancia, tiempodeterminado: @caso.tiempodeterminado, tipodecision: @caso.tipodecision, tribunal: @caso.tribunal, tribunalquecomunica: @caso.tribunalquecomunica } }
    end

    assert_redirected_to caso_url(Caso.last)
  end

  test "should show caso" do
    get caso_url(@caso)
    assert_response :success
  end

  test "should get edit" do
    get edit_caso_url(@caso)
    assert_response :success
  end

  test "should update caso" do
    patch caso_url(@caso), params: { caso: { bloque: @caso.bloque, delimitaciondeapartados: @caso.delimitaciondeapartados, direcciongrupo: @caso.direcciongrupo, estado: @caso.estado, estado: @caso.estado, estadoprovidencia: @caso.estadoprovidencia, fechacomunicacion: @caso.fechacomunicacion, fechaexpedicion: @caso.fechaexpedicion, lugardeinfluencia: @caso.lugardeinfluencia, lugarexpedicion: @caso.lugarexpedicion, magistradoponente: @caso.magistradoponente, nombreimplicado: @caso.nombreimplicado, nombreyaliaspost: @caso.nombreyaliaspost, ordenexhorto: @caso.ordenexhorto, radicado: @caso.radicado, radicado: @caso.radicado, recomendaciones: @caso.recomendaciones, sala: @caso.sala, secomunico: @caso.secomunico, segundainstancia: @caso.segundainstancia, tiempodeterminado: @caso.tiempodeterminado, tipodecision: @caso.tipodecision, tribunal: @caso.tribunal, tribunalquecomunica: @caso.tribunalquecomunica } }
    assert_redirected_to caso_url(@caso)
  end

  test "should destroy caso" do
    assert_difference('Caso.count', -1) do
      delete caso_url(@caso)
    end

    assert_redirected_to casos_url
  end
end
