require "application_system_test_case"

class PurchaseRentingsTest < ApplicationSystemTestCase
  setup do
    @purchase_renting = purchase_rentings(:one)
  end

  test "visiting the index" do
    visit purchase_rentings_url
    assert_selector "h1", text: "Purchase Rentings"
  end

  test "creating a Purchase renting" do
    visit purchase_rentings_url
    click_on "New Purchase Renting"

    fill_in "Book", with: @purchase_renting.book_id
    fill_in "Price", with: @purchase_renting.price
    fill_in "Quantity", with: @purchase_renting.quantity
    fill_in "Status", with: @purchase_renting.status
    fill_in "User", with: @purchase_renting.user_id
    click_on "Create Purchase renting"

    assert_text "Purchase renting was successfully created"
    click_on "Back"
  end

  test "updating a Purchase renting" do
    visit purchase_rentings_url
    click_on "Edit", match: :first

    fill_in "Book", with: @purchase_renting.book_id
    fill_in "Price", with: @purchase_renting.price
    fill_in "Quantity", with: @purchase_renting.quantity
    fill_in "Status", with: @purchase_renting.status
    fill_in "User", with: @purchase_renting.user_id
    click_on "Update Purchase renting"

    assert_text "Purchase renting was successfully updated"
    click_on "Back"
  end

  test "destroying a Purchase renting" do
    visit purchase_rentings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Purchase renting was successfully destroyed"
  end
end
