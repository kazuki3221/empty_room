require 'test_helper'

class ScaffoldResevationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffold_resevation = scaffold_resevations(:one)
  end

  test "should get index" do
    get scaffold_resevations_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffold_resevation_url
    assert_response :success
  end

  test "should create scaffold_resevation" do
    assert_difference('ScaffoldResevation.count') do
      post scaffold_resevations_url, params: { scaffold_resevation: { customer_scaffold_id: @scaffold_resevation.customer_scaffold_id, end_stay: @scaffold_resevation.end_stay, room2_id: @scaffold_resevation.room2_id, start_stay: @scaffold_resevation.start_stay } }
    end

    assert_redirected_to scaffold_resevation_url(ScaffoldResevation.last)
  end

  test "should show scaffold_resevation" do
    get scaffold_resevation_url(@scaffold_resevation)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffold_resevation_url(@scaffold_resevation)
    assert_response :success
  end

  test "should update scaffold_resevation" do
    patch scaffold_resevation_url(@scaffold_resevation), params: { scaffold_resevation: { customer_scaffold_id: @scaffold_resevation.customer_scaffold_id, end_stay: @scaffold_resevation.end_stay, room2_id: @scaffold_resevation.room2_id, start_stay: @scaffold_resevation.start_stay } }
    assert_redirected_to scaffold_resevation_url(@scaffold_resevation)
  end

  test "should destroy scaffold_resevation" do
    assert_difference('ScaffoldResevation.count', -1) do
      delete scaffold_resevation_url(@scaffold_resevation)
    end

    assert_redirected_to scaffold_resevations_url
  end
end
