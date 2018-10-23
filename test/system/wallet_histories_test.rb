require "application_system_test_case"

class WalletHistoriesTest < ApplicationSystemTestCase
  setup do
    @wallet_history = wallet_histories(:one)
  end

  test "visiting the index" do
    visit wallet_histories_url
    assert_selector "h1", text: "Wallet Histories"
  end

  test "creating a Wallet history" do
    visit wallet_histories_url
    click_on "New Wallet History"

    fill_in "Amount", with: @wallet_history.amount
    fill_in "Name", with: @wallet_history.name
    click_on "Create Wallet history"

    assert_text "Wallet history was successfully created"
    click_on "Back"
  end

  test "updating a Wallet history" do
    visit wallet_histories_url
    click_on "Edit", match: :first

    fill_in "Amount", with: @wallet_history.amount
    fill_in "Name", with: @wallet_history.name
    click_on "Update Wallet history"

    assert_text "Wallet history was successfully updated"
    click_on "Back"
  end

  test "destroying a Wallet history" do
    visit wallet_histories_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Wallet history was successfully destroyed"
  end
end
