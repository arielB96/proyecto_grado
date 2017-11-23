require 'test_helper'

class ConsultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @consultas = consulta(:one)
  end

  test "should get index" do
    get consulta_url
    assert_response :success
  end

  test "should get new" do
    get new_consultas_url
    assert_response :success
  end

  test "should create consultas" do
    assert_difference('Consultas.count') do
      post consulta_url, params: { consultas: { diagnostico: @consultas.diagnostico, examenFisico: @consultas.examenFisico, motivoConsul: @consultas.motivoConsul, otroDiagnos: @consultas.otroDiagnos, tratamiento: @consultas.tratamiento } }
    end

    assert_redirected_to consultas_url(Consultas.last)
  end

  test "should show consultas" do
    get consultas_url(@consultas)
    assert_response :success
  end

  test "should get edit" do
    get edit_consultas_url(@consultas)
    assert_response :success
  end

  test "should update consultas" do
    patch consultas_url(@consultas), params: { consultas: { diagnostico: @consultas.diagnostico, examenFisico: @consultas.examenFisico, motivoConsul: @consultas.motivoConsul, otroDiagnos: @consultas.otroDiagnos, tratamiento: @consultas.tratamiento } }
    assert_redirected_to consultas_url(@consultas)
  end

  test "should destroy consultas" do
    assert_difference('Consultas.count', -1) do
      delete consultas_url(@consultas)
    end

    assert_redirected_to consulta_url
  end
end
