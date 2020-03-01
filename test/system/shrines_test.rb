require "application_system_test_case"

class ShrinesTest < ApplicationSystemTestCase
  setup do
    @shrine = shrines(:one)
  end

  test "visiting the index" do
    visit shrines_url
    assert_selector "h1", text: "Shrines"
  end

  test "creating a Shrine" do
    visit shrines_url
    click_on "New Shrine"

    fill_in "Adress", with: @shrine.adress
    fill_in "Location", with: @shrine.location
    fill_in "Name", with: @shrine.name
    fill_in "Nearest station", with: @shrine.nearest_station
    fill_in "Photo", with: @shrine.photo
    fill_in "Url", with: @shrine.url
    fill_in "User", with: @shrine.user_id
    click_on "Create Shrine"

    assert_text "Shrine was successfully created"
    click_on "Back"
  end

  test "updating a Shrine" do
    visit shrines_url
    click_on "Edit", match: :first

    fill_in "Adress", with: @shrine.adress
    fill_in "Location", with: @shrine.location
    fill_in "Name", with: @shrine.name
    fill_in "Nearest station", with: @shrine.nearest_station
    fill_in "Photo", with: @shrine.photo
    fill_in "Url", with: @shrine.url
    fill_in "User", with: @shrine.user_id
    click_on "Update Shrine"

    assert_text "Shrine was successfully updated"
    click_on "Back"
  end

  test "destroying a Shrine" do
    visit shrines_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shrine was successfully destroyed"
  end
end
