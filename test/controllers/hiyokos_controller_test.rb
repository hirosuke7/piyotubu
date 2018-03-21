require 'test_helper'

class HiyokosControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get hiyokos_index_url
    assert_response :success
  end

  test "should get new" do
    get hiyokos_new_url
    assert_response :success
  end

  test "should get create" do
    get hiyokos_create_url
    assert_response :success
  end

  test "should get edit" do
    get hiyokos_edit_url
    assert_response :success
  end

  test "should get update" do
    get hiyokos_update_url
    assert_response :success
  end

  test "should get show" do
    get hiyokos_show_url
    assert_response :success
  end

  test "should get destroy" do
    get hiyokos_destroy_url
    assert_response :success
  end

end
