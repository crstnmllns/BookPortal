require 'test_helper'

class PurchaseRentingsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @purchase_renting = purchase_rentings(:one)
  end

  test "should get index" do
    get purchase_rentings_url
    assert_response :success
  end

  test "should get new" do
    get new_purchase_renting_url
    assert_response :success
  end

  test "should create purchase_renting" do
    assert_difference('PurchaseRenting.count') do
      post purchase_rentings_url, params: { purchase_renting: { book_id: @purchase_renting.book_id, price: @purchase_renting.price, quantity: @purchase_renting.quantity, status: @purchase_renting.status, user_id: @purchase_renting.user_id } }
    end

    assert_redirected_to purchase_renting_url(PurchaseRenting.last)
  end

  test "should show purchase_renting" do
    get purchase_renting_url(@purchase_renting)
    assert_response :success
  end

  test "should get edit" do
    get edit_purchase_renting_url(@purchase_renting)
    assert_response :success
  end

  test "should update purchase_renting" do
    patch purchase_renting_url(@purchase_renting), params: { purchase_renting: { book_id: @purchase_renting.book_id, price: @purchase_renting.price, quantity: @purchase_renting.quantity, status: @purchase_renting.status, user_id: @purchase_renting.user_id } }
    assert_redirected_to purchase_renting_url(@purchase_renting)
  end

  test "should destroy purchase_renting" do
    assert_difference('PurchaseRenting.count', -1) do
      delete purchase_renting_url(@purchase_renting)
    end

    assert_redirected_to purchase_rentings_url
  end
end
