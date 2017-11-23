require 'test_helper'

class FichaMedicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ficha_medica = ficha_medicas(:one)
  end

  test "should get index" do
    get ficha_medicas_url
    assert_response :success
  end

  test "should get new" do
    get new_ficha_medica_url
    assert_response :success
  end

  test "should create ficha_medica" do
    assert_difference('FichaMedica.count') do
      post ficha_medicas_url, params: { ficha_medica: { apellido: @ficha_medica.apellido, ci: @ficha_medica.ci, departamentoActual: @ficha_medica.departamentoActual, direccionActual: @ficha_medica.direccionActual, distritoActual: @ficha_medica.distritoActual, edad: @ficha_medica.edad, email: @ficha_medica.email, especialidad: @ficha_medica.especialidad, estadoCivil: @ficha_medica.estadoCivil, etnia: @ficha_medica.etnia, lugarNacimiento: @ficha_medica.lugarNacimiento, nCasa: @ficha_medica.nCasa, nombre: @ficha_medica.nombre, numero: @ficha_medica.numero, sexo: @ficha_medica.sexo, telefono: @ficha_medica.telefono } }
    end

    assert_redirected_to ficha_medica_url(FichaMedica.last)
  end

  test "should show ficha_medica" do
    get ficha_medica_url(@ficha_medica)
    assert_response :success
  end

  test "should get edit" do
    get edit_ficha_medica_url(@ficha_medica)
    assert_response :success
  end

  test "should update ficha_medica" do
    patch ficha_medica_url(@ficha_medica), params: { ficha_medica: { apellido: @ficha_medica.apellido, ci: @ficha_medica.ci, departamentoActual: @ficha_medica.departamentoActual, direccionActual: @ficha_medica.direccionActual, distritoActual: @ficha_medica.distritoActual, edad: @ficha_medica.edad, email: @ficha_medica.email, especialidad: @ficha_medica.especialidad, estadoCivil: @ficha_medica.estadoCivil, etnia: @ficha_medica.etnia, lugarNacimiento: @ficha_medica.lugarNacimiento, nCasa: @ficha_medica.nCasa, nombre: @ficha_medica.nombre, numero: @ficha_medica.numero, sexo: @ficha_medica.sexo, telefono: @ficha_medica.telefono } }
    assert_redirected_to ficha_medica_url(@ficha_medica)
  end

  test "should destroy ficha_medica" do
    assert_difference('FichaMedica.count', -1) do
      delete ficha_medica_url(@ficha_medica)
    end

    assert_redirected_to ficha_medicas_url
  end
end
