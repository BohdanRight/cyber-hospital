require "application_system_test_case"

class ReceivingsTest < ApplicationSystemTestCase
  setup do
    @receiving = receivings(:one)
  end

  test "visiting the index" do
    visit receivings_url
    assert_selector "h1", text: "Receivings"
  end

  test "creating a Receiving" do
    visit receivings_url
    click_on "New Receiving"

    click_on "Create Receiving"

    assert_text "Receiving was successfully created"
    click_on "Back"
  end

  test "updating a Receiving" do
    visit receivings_url
    click_on "Edit", match: :first

    click_on "Update Receiving"

    assert_text "Receiving was successfully updated"
    click_on "Back"
  end

  test "destroying a Receiving" do
    visit receivings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Receiving was successfully destroyed"
  end
end
