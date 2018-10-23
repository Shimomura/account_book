require "application_system_test_case"

class CategriesTest < ApplicationSystemTestCase
  setup do
    @categry = categries(:one)
  end

  test "visiting the index" do
    visit categries_url
    assert_selector "h1", text: "Categries"
  end

  test "creating a Categry" do
    visit categries_url
    click_on "New Categry"

    fill_in "Name", with: @categry.name
    click_on "Create Categry"

    assert_text "Categry was successfully created"
    click_on "Back"
  end

  test "updating a Categry" do
    visit categries_url
    click_on "Edit", match: :first

    fill_in "Name", with: @categry.name
    click_on "Update Categry"

    assert_text "Categry was successfully updated"
    click_on "Back"
  end

  test "destroying a Categry" do
    visit categries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Categry was successfully destroyed"
  end
end
