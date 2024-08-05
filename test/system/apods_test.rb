require "application_system_test_case"

class ApodsTest < ApplicationSystemTestCase
  setup do
    @apod = apods(:one)
  end

  test "visiting the index" do
    visit apods_url
    assert_selector "h1", text: "Apods"
  end

  test "creating a Apod" do
    visit apods_url
    click_on "New Apod"

    fill_in "Name", with: @apod.name
    fill_in "Picture", with: @apod.picture
    click_on "Create Apod"

    assert_text "Apod was successfully created"
    click_on "Back"
  end

  test "updating a Apod" do
    visit apods_url
    click_on "Edit", match: :first

    fill_in "Name", with: @apod.name
    fill_in "Picture", with: @apod.picture
    click_on "Update Apod"

    assert_text "Apod was successfully updated"
    click_on "Back"
  end

  test "destroying a Apod" do
    visit apods_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Apod was successfully destroyed"
  end
end
