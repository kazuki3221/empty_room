require "application_system_test_case"

class CustomerScaffoldsTest < ApplicationSystemTestCase
  setup do
    @customer_scaffold = customer_scaffolds(:one)
  end

  test "visiting the index" do
    visit customer_scaffolds_url
    assert_selector "h1", text: "Customer Scaffolds"
  end

  test "creating a Customer scaffold" do
    visit customer_scaffolds_url
    click_on "New Customer Scaffold"

    fill_in "Birthday", with: @customer_scaffold.birthday
    fill_in "Email", with: @customer_scaffold.email
    fill_in "Name first", with: @customer_scaffold.name_first
    fill_in "Name first kana", with: @customer_scaffold.name_first_kana
    fill_in "Name last", with: @customer_scaffold.name_last
    fill_in "Placeholder", with: @customer_scaffold.placeholder
    fill_in "Tel", with: @customer_scaffold.tel
    click_on "Create Customer scaffold"

    assert_text "Customer scaffold was successfully created"
    click_on "Back"
  end

  test "updating a Customer scaffold" do
    visit customer_scaffolds_url
    click_on "Edit", match: :first

    fill_in "Birthday", with: @customer_scaffold.birthday
    fill_in "Email", with: @customer_scaffold.email
    fill_in "Name first", with: @customer_scaffold.name_first
    fill_in "Name first kana", with: @customer_scaffold.name_first_kana
    fill_in "Name last", with: @customer_scaffold.name_last
    fill_in "Placeholder", with: @customer_scaffold.placeholder
    fill_in "Tel", with: @customer_scaffold.tel
    click_on "Update Customer scaffold"

    assert_text "Customer scaffold was successfully updated"
    click_on "Back"
  end

  test "destroying a Customer scaffold" do
    visit customer_scaffolds_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Customer scaffold was successfully destroyed"
  end
end
