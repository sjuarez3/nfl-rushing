require "application_system_test_case"

class RushingsTest < ApplicationSystemTestCase
  setup do
    @rushing = rushings(:one)
  end

  test "visiting the index" do
    visit rushings_url
    assert_selector "h1", text: "Rushings"
  end

  test "creating a Rushing" do
    visit rushings_url
    click_on "New Rushing"

    click_on "Create Rushing"

    assert_text "Rushing was successfully created"
    click_on "Back"
  end

  test "updating a Rushing" do
    visit rushings_url
    click_on "Edit", match: :first

    click_on "Update Rushing"

    assert_text "Rushing was successfully updated"
    click_on "Back"
  end

  test "destroying a Rushing" do
    visit rushings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Rushing was successfully destroyed"
  end
end
