require 'test_helper'

class MenutagsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @menutag = menutags(:one)
  end

  test "should get index" do
    get menutags_url, as: :json
    assert_response :success
  end

  test "should create menutag" do
    assert_difference('Menutag.count') do
      post menutags_url, params: { menutag: { menu_id: @menutag.menu_id, tag_id: @menutag.tag_id } }, as: :json
    end

    assert_response 201
  end

  test "should show menutag" do
    get menutag_url(@menutag), as: :json
    assert_response :success
  end

  test "should update menutag" do
    patch menutag_url(@menutag), params: { menutag: { menu_id: @menutag.menu_id, tag_id: @menutag.tag_id } }, as: :json
    assert_response 200
  end

  test "should destroy menutag" do
    assert_difference('Menutag.count', -1) do
      delete menutag_url(@menutag), as: :json
    end

    assert_response 204
  end
end
