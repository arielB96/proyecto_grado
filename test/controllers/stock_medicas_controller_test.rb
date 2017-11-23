require 'test_helper'

class StockMedicasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stock_medica = stock_medicas(:one)
  end

  test "should get index" do
    get stock_medicas_url
    assert_response :success
  end

  test "should get new" do
    get new_stock_medica_url
    assert_response :success
  end

  test "should create stock_medica" do
    assert_difference('StockMedica.count') do
      post stock_medicas_url, params: { stock_medica: { cantidad: @stock_medica.cantidad } }
    end

    assert_redirected_to stock_medica_url(StockMedica.last)
  end

  test "should show stock_medica" do
    get stock_medica_url(@stock_medica)
    assert_response :success
  end

  test "should get edit" do
    get edit_stock_medica_url(@stock_medica)
    assert_response :success
  end

  test "should update stock_medica" do
    patch stock_medica_url(@stock_medica), params: { stock_medica: { cantidad: @stock_medica.cantidad } }
    assert_redirected_to stock_medica_url(@stock_medica)
  end

  test "should destroy stock_medica" do
    assert_difference('StockMedica.count', -1) do
      delete stock_medica_url(@stock_medica)
    end

    assert_redirected_to stock_medicas_url
  end
end
