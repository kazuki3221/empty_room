require 'test_helper'

class ScaffoldSalesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @scaffold_sale = scaffold_sales(:one)
  end

  test "should get index" do
    get scaffold_sales_url
    assert_response :success
  end

  test "should get new" do
    get new_scaffold_sale_url
    assert_response :success
  end

  test "should create scaffold_sale" do
    assert_difference('ScaffoldSale.count') do
      post scaffold_sales_url, params: { scaffold_sale: { customer_scaffold_id: @scaffold_sale.customer_scaffold_id, end_stay: @scaffold_sale.end_stay, room2_id: @scaffold_sale.room2_id, start_stay: @scaffold_sale.start_stay } }
    end

    assert_redirected_to scaffold_sale_url(ScaffoldSale.last)
  end

  test "should show scaffold_sale" do
    get scaffold_sale_url(@scaffold_sale)
    assert_response :success
  end

  test "should get edit" do
    get edit_scaffold_sale_url(@scaffold_sale)
    assert_response :success
  end

  test "should update scaffold_sale" do
    patch scaffold_sale_url(@scaffold_sale), params: { scaffold_sale: { customer_scaffold_id: @scaffold_sale.customer_scaffold_id, end_stay: @scaffold_sale.end_stay, room2_id: @scaffold_sale.room2_id, start_stay: @scaffold_sale.start_stay } }
    assert_redirected_to scaffold_sale_url(@scaffold_sale)
  end

  test "should destroy scaffold_sale" do
    assert_difference('ScaffoldSale.count', -1) do
      delete scaffold_sale_url(@scaffold_sale)
    end

    assert_redirected_to scaffold_sales_url
  end
end
