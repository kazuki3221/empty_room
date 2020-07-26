require "application_system_test_case"

class ResevationsTest < ApplicationSystemTestCase
  setup do
    @resevation = resevations(:one)
  end

  test "visiting the index" do
    visit resevations_url
    assert_selector "h1", text: "Resevations"
  end

  test "creating a Resevation" do
    visit resevations_url
    click_on "New Resevation"

    fill_in "Customer", with: @resevation.customer_id
    fill_in "End start", with: @resevation.end_start
    fill_in "Room", with: @resevation.room_id
    fill_in "Start stay", with: @resevation.start_stay
    fill_in "User", with: @resevation.user_id
    click_on "Create Resevation"

    assert_text "Resevation was successfully created"
    click_on "Back"
  end

  test "updating a Resevation" do
    visit resevations_url
    click_on "Edit", match: :first

    fill_in "Customer", with: @resevation.customer_id
    fill_in "End start", with: @resevation.end_start
    fill_in "Room", with: @resevation.room_id
    fill_in "Start stay", with: @resevation.start_stay
    fill_in "User", with: @resevation.user_id
    click_on "Update Resevation"

    assert_text "Resevation was successfully updated"
    click_on "Back"
  end

  test "destroying a Resevation" do
    visit resevations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Resevation was successfully destroyed"
  end
end
