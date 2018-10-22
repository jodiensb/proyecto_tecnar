require 'test_helper'

class ProgramasControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get programas_index_url
    assert_response :success
  end

  test "should get new" do
    get programas_new_url
    assert_response :success
  end

  test "should get show" do
    get programas_show_url
    assert_response :success
  end

  test "should get edit" do
    get programas_edit_url
    assert_response :success
  end

end
