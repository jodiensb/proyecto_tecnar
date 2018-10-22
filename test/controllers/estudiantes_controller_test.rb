require 'test_helper'

class EstudiantesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get estudiantes_index_url
    assert_response :success
  end

  test "should get new" do
    get estudiantes_new_url
    assert_response :success
  end

  test "should get show" do
    get estudiantes_show_url
    assert_response :success
  end

  test "should get edit" do
    get estudiantes_edit_url
    assert_response :success
  end

end
