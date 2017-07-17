require 'test_helper'

class UrlMappingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @url_mapping = url_mappings(:one)
  end

  test "should get index" do
    get url_mappings_url
    assert_response :success
  end

  test "should get new" do
    get new_url_mapping_url
    assert_response :success
  end

  test "should create url_mapping" do
    assert_difference('UrlMapping.count') do
      post url_mappings_url, params: { url_mapping: { code: @url_mapping.code, longurl: @url_mapping.longurl } }
    end

    assert_redirected_to url_mapping_url(UrlMapping.last)
  end

  test "should show url_mapping" do
    get url_mapping_url(@url_mapping)
    assert_response :success
  end

  test "should get edit" do
    get edit_url_mapping_url(@url_mapping)
    assert_response :success
  end

  test "should update url_mapping" do
    patch url_mapping_url(@url_mapping), params: { url_mapping: { code: @url_mapping.code, longurl: @url_mapping.longurl } }
    assert_redirected_to url_mapping_url(@url_mapping)
  end

  test "should destroy url_mapping" do
    assert_difference('UrlMapping.count', -1) do
      delete url_mapping_url(@url_mapping)
    end

    assert_redirected_to url_mappings_url
  end
end
