require 'test_helper'

class FichaDocsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ficha_doc = ficha_docs(:one)
  end

  test "should get index" do
    get ficha_docs_url
    assert_response :success
  end

  test "should get new" do
    get new_ficha_doc_url
    assert_response :success
  end

  test "should create ficha_doc" do
    assert_difference('FichaDoc.count') do
      post ficha_docs_url, params: { ficha_doc: { diagnostico: @ficha_doc.diagnostico, diagnostico: @ficha_doc.diagnostico, examenFisico: @ficha_doc.examenFisico, motivoConsul: @ficha_doc.motivoConsul, otroDiagnos: @ficha_doc.otroDiagnos, reference: @ficha_doc.reference, tratamiento: @ficha_doc.tratamiento } }
    end

    assert_redirected_to ficha_doc_url(FichaDoc.last)
  end

  test "should show ficha_doc" do
    get ficha_doc_url(@ficha_doc)
    assert_response :success
  end

  test "should get edit" do
    get edit_ficha_doc_url(@ficha_doc)
    assert_response :success
  end

  test "should update ficha_doc" do
    patch ficha_doc_url(@ficha_doc), params: { ficha_doc: { diagnostico: @ficha_doc.diagnostico, diagnostico: @ficha_doc.diagnostico, examenFisico: @ficha_doc.examenFisico, motivoConsul: @ficha_doc.motivoConsul, otroDiagnos: @ficha_doc.otroDiagnos, reference: @ficha_doc.reference, tratamiento: @ficha_doc.tratamiento } }
    assert_redirected_to ficha_doc_url(@ficha_doc)
  end

  test "should destroy ficha_doc" do
    assert_difference('FichaDoc.count', -1) do
      delete ficha_doc_url(@ficha_doc)
    end

    assert_redirected_to ficha_docs_url
  end
end
