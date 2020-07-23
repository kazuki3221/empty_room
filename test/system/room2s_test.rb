require "application_system_test_case"

class Room2sTest < ApplicationSystemTestCase
  setup do
    @room2 = room2s(:one)
  end

  test "visiting the index" do
    visit room2s_url
    assert_selector "h1", text: "Room2s"
  end

  test "creating a Room2" do
    visit room2s_url
    click_on "New Room2"

    fill_in "Floor", with: @room2.floor
    fill_in "Number", with: @room2.number
    fill_in "Price", with: @room2.price
    fill_in "Room type", with: @room2.room_type
    click_on "Create Room2"

    assert_text "Room2 was successfully created"
    click_on "Back"
  end

  test "updating a Room2" do
    visit room2s_url
    click_on "Edit", match: :first

    fill_in "Floor", with: @room2.floor
    fill_in "Number", with: @room2.number
    fill_in "Price", with: @room2.price
    fill_in "Room type", with: @room2.room_type
    click_on "Update Room2"

    assert_text "Room2 was successfully updated"
    click_on "Back"
  end

  test "destroying a Room2" do
    visit room2s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Room2 was successfully destroyed"
  end
end
