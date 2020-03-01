require "application_system_test_case"

class TemplesTest < ApplicationSystemTestCase
  setup do
    @temple = temples(:one)
  end

  test "visiting the index" do
    visit temples_url
    assert_selector "h1", text: "Temples"
  end

  test "creating a Temple" do
    visit temples_url
    click_on "New Temple"

    fill_in "Adress", with: @temple.adress
    fill_in "Location", with: @temple.location
    fill_in "Name", with: @temple.name
    fill_in "Nearest station", with: @temple.nearest_station
    fill_in "Photo", with: @temple.photo
    fill_in "Url", with: @temple.url
    fill_in "User", with: @temple.user_id
    click_on "Create Temple"

    assert_text "Temple was successfully created"
    click_on "Back"
  end

  test "updating a Temple" do
    visit temples_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @temple.adress
    fill_in "Location", with: @temple.location
    fill_in "Name", with: @temple.name
    fill_in "Nearest station", with: @temple.nearest_station
    fill_in "Photo", with: @temple.photo
    fill_in "Url", with: @temple.url
    fill_in "User", with: @temple.user_id
    click_on "Update Temple"

    assert_text "Temple was successfully updated"
    click_on "Back"
  end

  test "destroying a Temple" do
    visit temples_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temple was successfully destroyed"
  end
end
