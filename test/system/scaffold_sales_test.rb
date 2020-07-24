require "application_system_test_case"

class ScaffoldSalesTest < ApplicationSystemTestCase
  setup do
    @scaffold_sale = scaffold_sales(:one)
  end

  test "visiting the index" do
    visit scaffold_sales_url
    assert_selector "h1", text: "Scaffold Sales"
  end

  test "creating a Scaffold sale" do
    visit scaffold_sales_url
    click_on "New Scaffold Sale"

    fill_in "Customer scaffold", with: @scaffold_sale.customer_scaffold_id
    fill_in "End stay", with: @scaffold_sale.end_stay
    fill_in "Room2", with: @scaffold_sale.room2_id
    fill_in "Start stay", with: @scaffold_sale.start_stay
    click_on "Create Scaffold sale"

    assert_text "Scaffold sale was successfully created"
    click_on "Back"
  end

  test "updating a Scaffold sale" do
    visit scaffold_sales_url
    click_on "Edit", match: :first

    fill_in "Customer scaffold", with: @scaffold_sale.customer_scaffold_id
    fill_in "End stay", with: @scaffold_sale.end_stay
    fill_in "Room2", with: @scaffold_sale.room2_id
    fill_in "Start stay", with: @scaffold_sale.start_stay
    click_on "Update Scaffold sale"

    assert_text "Scaffold sale was successfully updated"
    click_on "Back"
  end

  test "destroying a Scaffold sale" do
    visit scaffold_sales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Scaffold sale was successfully destroyed"
  end
end
