require "test_helper"

class WeightHistriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weight_histry = weight_histries(:one)
  end

  test "should get index" do
    get weight_histries_url
    assert_response :success
  end

  test "should get new" do
    get new_weight_histry_url
    assert_response :success
  end

  test "should create weight_histry" do
    assert_difference('WeightHistry.count') do
      post weight_histries_url, params: { weight_histry: { memo: @weight_histry.memo, user_id: @weight_histry.user_id, weight: @weight_histry.weight } }
    end

    assert_redirected_to weight_histry_url(WeightHistry.last)
  end

  test "should show weight_histry" do
    get weight_histry_url(@weight_histry)
    assert_response :success
  end

  test "should get edit" do
    get edit_weight_histry_url(@weight_histry)
    assert_response :success
  end

  test "should update weight_histry" do
    patch weight_histry_url(@weight_histry), params: { weight_histry: { memo: @weight_histry.memo, user_id: @weight_histry.user_id, weight: @weight_histry.weight } }
    assert_redirected_to weight_histry_url(@weight_histry)
  end

  test "should destroy weight_histry" do
    assert_difference('WeightHistry.count', -1) do
      delete weight_histry_url(@weight_histry)
    end

    assert_redirected_to weight_histries_url
  end
end
