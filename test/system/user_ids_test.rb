require "application_system_test_case"

class UserIdsTest < ApplicationSystemTestCase
  setup do
    @user_id = user_ids(:one)
  end

  test "visiting the index" do
    visit user_ids_url
    assert_selector "h1", text: "User Ids"
  end

  test "creating a User" do
    visit user_ids_url
    click_on "New User"

    fill_in "Email", with: @user_id.email
    fill_in "Name", with: @user_id.name
    fill_in "Old", with: @user_id.old
    fill_in "Password", with: @user_id.password
    click_on "Create User"

    assert_text "User was successfully created"
    click_on "Back"
  end

  test "updating a User" do
    visit user_ids_url
    click_on "Edit", match: :first

    fill_in "Email", with: @user_id.email
    fill_in "Name", with: @user_id.name
    fill_in "Old", with: @user_id.old
    fill_in "Password", with: @user_id.password
    click_on "Update User"

    assert_text "User was successfully updated"
    click_on "Back"
  end

  test "destroying a User" do
    visit user_ids_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "User was successfully destroyed"
  end
end
