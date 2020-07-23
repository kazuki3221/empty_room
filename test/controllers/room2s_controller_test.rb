require 'test_helper'

class Room2sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @room2 = room2s(:one)
  end

  test "should get index" do
    get room2s_url
    assert_response :success
  end

  test "should get new" do
    get new_room2_url
    assert_response :success
  end

  test "should create room2" do
    assert_difference('Room2.count') do
      post room2s_url, params: { room2: { floor: @room2.floor, number: @room2.number, price: @room2.price, room_type: @room2.room_type } }
    end

    assert_redirected_to room2_url(Room2.last)
  end

  test "should show room2" do
    get room2_url(@room2)
    assert_response :success
  end

  test "should get edit" do
    get edit_room2_url(@room2)
    assert_response :success
  end

  test "should update room2" do
    patch room2_url(@room2), params: { room2: { floor: @room2.floor, number: @room2.number, price: @room2.price, room_type: @room2.room_type } }
    assert_redirected_to room2_url(@room2)
  end

  test "should destroy room2" do
    assert_difference('Room2.count', -1) do
      delete room2_url(@room2)
    end

    assert_redirected_to room2s_url
  end
end
