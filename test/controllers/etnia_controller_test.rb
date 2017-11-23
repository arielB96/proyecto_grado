require 'test_helper'

class EtniaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @etnias = etnia(:one)
  end

  test "should get index" do
    get etnia_url
    assert_response :success
  end

  test "should get new" do
    get new_etnias_url
    assert_response :success
  end

  test "should create etnias" do
    assert_difference('Etnias.count') do
      post etnia_url, params: { etnias: { estnia: @etnias.estnia } }
    end

    assert_redirected_to etnias_url(Etnias.last)
  end

  test "should show etnias" do
    get etnias_url(@etnias)
    assert_response :success
  end

  test "should get edit" do
    get edit_etnias_url(@etnias)
    assert_response :success
  end

  test "should update etnias" do
    patch etnias_url(@etnias), params: { etnias: { estnia: @etnias.estnia } }
    assert_redirected_to etnias_url(@etnias)
  end

  test "should destroy etnias" do
    assert_difference('Etnias.count', -1) do
      delete etnias_url(@etnias)
    end

    assert_redirected_to etnia_url
  end
end
