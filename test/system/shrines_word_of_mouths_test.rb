require "application_system_test_case"

class ShrinesWordOfMouthsTest < ApplicationSystemTestCase
  setup do
    @shrines_word_of_mouth = shrines_word_of_mouths(:one)
  end

  test "visiting the index" do
    visit shrines_word_of_mouths_url
    assert_selector "h1", text: "Shrines Word Of Mouths"
  end

  test "creating a Shrines word of mouth" do
    visit shrines_word_of_mouths_url
    click_on "New Shrines Word Of Mouth"

    fill_in "Article", with: @shrines_word_of_mouth.article
    fill_in "Name", with: @shrines_word_of_mouth.name
    fill_in "Photo", with: @shrines_word_of_mouth.photo
    fill_in "Shrine", with: @shrines_word_of_mouth.shrine_id
    fill_in "User", with: @shrines_word_of_mouth.user_id
    click_on "Create Shrines word of mouth"

    assert_text "Shrines word of mouth was successfully created"
    click_on "Back"
  end

  test "updating a Shrines word of mouth" do
    visit shrines_word_of_mouths_url
    click_on "Edit", match: :first

    fill_in "Article", with: @shrines_word_of_mouth.article
    fill_in "Name", with: @shrines_word_of_mouth.name
    fill_in "Photo", with: @shrines_word_of_mouth.photo
    fill_in "Shrine", with: @shrines_word_of_mouth.shrine_id
    fill_in "User", with: @shrines_word_of_mouth.user_id
    click_on "Update Shrines word of mouth"

    assert_text "Shrines word of mouth was successfully updated"
    click_on "Back"
  end

  test "destroying a Shrines word of mouth" do
    visit shrines_word_of_mouths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shrines word of mouth was successfully destroyed"
  end
end
