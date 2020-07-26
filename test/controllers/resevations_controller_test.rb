require 'test_helper'

class ResevationsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @resevation = resevations(:one)
  end

  test "should get index" do
    get resevations_url
    assert_response :success
  end

  test "should get new" do
    get new_resevation_url
    assert_response :success
  end

  test "should create resevation" do
    assert_difference('Resevation.count') do
      post resevations_url, params: { resevation: { customer_id: @resevation.customer_id, end_start: @resevation.end_start, room_id: @resevation.room_id, start_stay: @resevation.start_stay, user_id: @resevation.user_id } }
    end

    assert_redirected_to resevation_url(Resevation.last)
  end

  test "should show resevation" do
    get resevation_url(@resevation)
    assert_response :success
  end

  test "should get edit" do
    get edit_resevation_url(@resevation)
    assert_response :success
  end

  test "should update resevation" do
    patch resevation_url(@resevation), params: { resevation: { customer_id: @resevation.customer_id, end_start: @resevation.end_start, room_id: @resevation.room_id, start_stay: @resevation.start_stay, user_id: @resevation.user_id } }
    assert_redirected_to resevation_url(@resevation)
  end

  test "should destroy resevation" do
    assert_difference('Resevation.count', -1) do
      delete resevation_url(@resevation)
    end

    assert_redirected_to resevations_url
  end
end
