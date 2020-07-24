require 'test_helper'

class CustomerScaffoldsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @customer_scaffold = customer_scaffolds(:one)
  end

  test "should get index" do
    get customer_scaffolds_url
    assert_response :success
  end

  test "should get new" do
    get new_customer_scaffold_url
    assert_response :success
  end

  test "should create customer_scaffold" do
    assert_difference('CustomerScaffold.count') do
      post customer_scaffolds_url, params: { customer_scaffold: { birthday: @customer_scaffold.birthday, email: @customer_scaffold.email, name_first: @customer_scaffold.name_first, name_first_kana: @customer_scaffold.name_first_kana, name_last: @customer_scaffold.name_last, placeholder: @customer_scaffold.placeholder, tel: @customer_scaffold.tel } }
    end

    assert_redirected_to customer_scaffold_url(CustomerScaffold.last)
  end

  test "should show customer_scaffold" do
    get customer_scaffold_url(@customer_scaffold)
    assert_response :success
  end

  test "should get edit" do
    get edit_customer_scaffold_url(@customer_scaffold)
    assert_response :success
  end

  test "should update customer_scaffold" do
    patch customer_scaffold_url(@customer_scaffold), params: { customer_scaffold: { birthday: @customer_scaffold.birthday, email: @customer_scaffold.email, name_first: @customer_scaffold.name_first, name_first_kana: @customer_scaffold.name_first_kana, name_last: @customer_scaffold.name_last, placeholder: @customer_scaffold.placeholder, tel: @customer_scaffold.tel } }
    assert_redirected_to customer_scaffold_url(@customer_scaffold)
  end

  test "should destroy customer_scaffold" do
    assert_difference('CustomerScaffold.count', -1) do
      delete customer_scaffold_url(@customer_scaffold)
    end

    assert_redirected_to customer_scaffolds_url
  end
end
