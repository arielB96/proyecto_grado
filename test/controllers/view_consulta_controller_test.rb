require 'test_helper'

class ViewConsultaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @view_consultum = view_consulta(:one)
  end

  test "should get index" do
    get view_consulta_url
    assert_response :success
  end

  test "should get new" do
    get new_view_consultum_url
    assert_response :success
  end

  test "should create view_consultum" do
    assert_difference('ViewConsultum.count') do
      post view_consulta_url, params: { view_consultum: {  } }
    end

    assert_redirected_to view_consultum_url(ViewConsultum.last)
  end

  test "should show view_consultum" do
    get view_consultum_url(@view_consultum)
    assert_response :success
  end

  test "should get edit" do
    get edit_view_consultum_url(@view_consultum)
    assert_response :success
  end

  test "should update view_consultum" do
    patch view_consultum_url(@view_consultum), params: { view_consultum: {  } }
    assert_redirected_to view_consultum_url(@view_consultum)
  end

  test "should destroy view_consultum" do
    assert_difference('ViewConsultum.count', -1) do
      delete view_consultum_url(@view_consultum)
    end

    assert_redirected_to view_consulta_url
  end
end
