require "application_system_test_case"

class ProdutsTest < ApplicationSystemTestCase
  setup do
    @produt = produts(:one)
  end

  test "visiting the index" do
    visit produts_url
    assert_selector "h1", text: "Produts"
  end

  test "creating a Produt" do
    visit produts_url
    click_on "New Produt"

    fill_in "Name", with: @produt.name
    fill_in "Price", with: @produt.price
    fill_in "Vendor", with: @produt.vendor
    click_on "Create Produt"

    assert_text "Produt was successfully created"
    click_on "Back"
  end

  test "updating a Produt" do
    visit produts_url
    click_on "Edit", match: :first

    fill_in "Name", with: @produt.name
    fill_in "Price", with: @produt.price
    fill_in "Vendor", with: @produt.vendor
    click_on "Update Produt"

    assert_text "Produt was successfully updated"
    click_on "Back"
  end

  test "destroying a Produt" do
    visit produts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Produt was successfully destroyed"
  end
end
