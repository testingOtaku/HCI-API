require 'test_helper'

class CuisinesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cuisine = cuisines(:one)
  end

  test "should get index" do
    get cuisines_url, as: :json
    assert_response :success
  end

  test "should create cuisine" do
    assert_difference('Cuisine.count') do
      post cuisines_url, params: { cuisine: { name: @cuisine.name } }, as: :json
    end

    assert_response 201
  end

  test "should show cuisine" do
    get cuisine_url(@cuisine), as: :json
    assert_response :success
  end

  test "should update cuisine" do
    patch cuisine_url(@cuisine), params: { cuisine: { name: @cuisine.name } }, as: :json
    assert_response 200
  end

  test "should destroy cuisine" do
    assert_difference('Cuisine.count', -1) do
      delete cuisine_url(@cuisine), as: :json
    end

    assert_response 204
  end
end
