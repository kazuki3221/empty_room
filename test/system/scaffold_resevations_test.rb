require "application_system_test_case"

class ScaffoldResevationsTest < ApplicationSystemTestCase
  setup do
    @scaffold_resevation = scaffold_resevations(:one)
  end

  test "visiting the index" do
    visit scaffold_resevations_url
    assert_selector "h1", text: "Scaffold Resevations"
  end

  test "creating a Scaffold resevation" do
    visit scaffold_resevations_url
    click_on "New Scaffold Resevation"

    fill_in "Customer scaffold", with: @scaffold_resevation.customer_scaffold_id
    fill_in "End stay", with: @scaffold_resevation.end_stay
    fill_in "Room2", with: @scaffold_resevation.room2_id
    fill_in "Start stay", with: @scaffold_resevation.start_stay
    click_on "Create Scaffold resevation"

    assert_text "Scaffold resevation was successfully created"
    click_on "Back"
  end

  test "updating a Scaffold resevation" do
    visit scaffold_resevations_url
    click_on "Edit", match: :first

    fill_in "Customer scaffold", with: @scaffold_resevation.customer_scaffold_id
    fill_in "End stay", with: @scaffold_resevation.end_stay
    fill_in "Room2", with: @scaffold_resevation.room2_id
    fill_in "Start stay", with: @scaffold_resevation.start_stay
    click_on "Update Scaffold resevation"

    assert_text "Scaffold resevation was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaffold resevation" do
    visit scaffold_resevations_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaffold resevation was successfully destroyed"
  end
end
