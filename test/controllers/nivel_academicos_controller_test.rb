require 'test_helper'

class NivelAcademicosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @nivel_academico = nivel_academicos(:one)
  end

  test "should get index" do
    get nivel_academicos_url
    assert_response :success
  end

  test "should get new" do
    get new_nivel_academico_url
    assert_response :success
  end

  test "should create nivel_academico" do
    assert_difference('NivelAcademico.count') do
      post nivel_academicos_url, params: { nivel_academico: { nivelAcdemico: @nivel_academico.nivelAcdemico } }
    end

    assert_redirected_to nivel_academico_url(NivelAcademico.last)
  end

  test "should show nivel_academico" do
    get nivel_academico_url(@nivel_academico)
    assert_response :success
  end

  test "should get edit" do
    get edit_nivel_academico_url(@nivel_academico)
    assert_response :success
  end

  test "should update nivel_academico" do
    patch nivel_academico_url(@nivel_academico), params: { nivel_academico: { nivelAcdemico: @nivel_academico.nivelAcdemico } }
    assert_redirected_to nivel_academico_url(@nivel_academico)
  end

  test "should destroy nivel_academico" do
    assert_difference('NivelAcademico.count', -1) do
      delete nivel_academico_url(@nivel_academico)
    end

    assert_redirected_to nivel_academicos_url
  end
end
