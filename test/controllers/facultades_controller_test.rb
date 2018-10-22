require 'test_helper'

class FacultadesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get facultades_index_url
    assert_response :success
  end

  test "should get new" do
    get facultades_new_url
    assert_response :success
  end

  test "should get show" do
    get facultades_show_url
    assert_response :success
  end

  test "should get edit" do
    get facultades_edit_url
    assert_response :success
  end

end
