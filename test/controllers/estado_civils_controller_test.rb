require 'test_helper'

class EstadoCivilsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @estado_civil = estado_civils(:one)
  end

  test "should get index" do
    get estado_civils_url
    assert_response :success
  end

  test "should get new" do
    get new_estado_civil_url
    assert_response :success
  end

  test "should create estado_civil" do
    assert_difference('EstadoCivil.count') do
      post estado_civils_url, params: { estado_civil: { estadoCivil: @estado_civil.estadoCivil } }
    end

    assert_redirected_to estado_civil_url(EstadoCivil.last)
  end

  test "should show estado_civil" do
    get estado_civil_url(@estado_civil)
    assert_response :success
  end

  test "should get edit" do
    get edit_estado_civil_url(@estado_civil)
    assert_response :success
  end

  test "should update estado_civil" do
    patch estado_civil_url(@estado_civil), params: { estado_civil: { estadoCivil: @estado_civil.estadoCivil } }
    assert_redirected_to estado_civil_url(@estado_civil)
  end

  test "should destroy estado_civil" do
    assert_difference('EstadoCivil.count', -1) do
      delete estado_civil_url(@estado_civil)
    end

    assert_redirected_to estado_civils_url
  end
end
