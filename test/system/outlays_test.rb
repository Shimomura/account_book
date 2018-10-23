require "application_system_test_case"

class OutlaysTest < ApplicationSystemTestCase
  setup do
    @outlay = outlays(:one)
  end

  test "visiting the index" do
    visit outlays_url
    assert_selector "h1", text: "Outlays"
  end

  test "creating a Outlay" do
    visit outlays_url
    click_on "New Outlay"

    fill_in "Amount", with: @outlay.amount
    fill_in "Category", with: @outlay.category_id
    fill_in "Date", with: @outlay.date
    fill_in "Memo", with: @outlay.memo
    fill_in "Wallet", with: @outlay.wallet_id
    click_on "Create Outlay"

    assert_text "Outlay was successfully created"
    click_on "Back"
  end

  test "updating a Outlay" do
    visit outlays_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @outlay.amount
    fill_in "Category", with: @outlay.category_id
    fill_in "Date", with: @outlay.date
    fill_in "Memo", with: @outlay.memo
    fill_in "Wallet", with: @outlay.wallet_id
    click_on "Update Outlay"

    assert_text "Outlay was successfully updated"
    click_on "Back"
  end

  test "destroying a Outlay" do
    visit outlays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Outlay was successfully destroyed"
  end
end
