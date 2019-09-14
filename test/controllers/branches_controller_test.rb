require 'test_helper'

class BranchesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @branch = branches(:one)
  end

  test "should get index" do
    get branches_url, as: :json
    assert_response :success
  end

  test "should create branch" do
    assert_difference('Branch.count') do
      post branches_url, params: { branch: { address: @branch.address, area_id: @branch.area_id, city_id: @branch.city_id, restaurant_id: @branch.restaurant_id } }, as: :json
    end

    assert_response 201
  end

  test "should show branch" do
    get branch_url(@branch), as: :json
    assert_response :success
  end

  test "should update branch" do
    patch branch_url(@branch), params: { branch: { address: @branch.address, area_id: @branch.area_id, city_id: @branch.city_id, restaurant_id: @branch.restaurant_id } }, as: :json
    assert_response 200
  end

  test "should destroy branch" do
    assert_difference('Branch.count', -1) do
      delete branch_url(@branch), as: :json
    end

    assert_response 204
  end
end
