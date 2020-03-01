require "application_system_test_case"

class TempleWordOfMouthsTest < ApplicationSystemTestCase
  setup do
    @temple_word_of_mouth = temple_word_of_mouths(:one)
  end

  test "visiting the index" do
    visit temple_word_of_mouths_url
    assert_selector "h1", text: "Temple Word Of Mouths"
  end

  test "creating a Temple word of mouth" do
    visit temple_word_of_mouths_url
    click_on "New Temple Word Of Mouth"

    fill_in "Article", with: @temple_word_of_mouth.article
    fill_in "Name", with: @temple_word_of_mouth.name
    fill_in "Photo", with: @temple_word_of_mouth.photo
    fill_in "Temple", with: @temple_word_of_mouth.temple_id
    fill_in "User", with: @temple_word_of_mouth.user_id
    click_on "Create Temple word of mouth"

    assert_text "Temple word of mouth was successfully created"
    click_on "Back"
  end

  test "updating a Temple word of mouth" do
    visit temple_word_of_mouths_url
    click_on "Edit", match: :first

    fill_in "Article", with: @temple_word_of_mouth.article
    fill_in "Name", with: @temple_word_of_mouth.name
    fill_in "Photo", with: @temple_word_of_mouth.photo
    fill_in "Temple", with: @temple_word_of_mouth.temple_id
    fill_in "User", with: @temple_word_of_mouth.user_id
    click_on "Update Temple word of mouth"

    assert_text "Temple word of mouth was successfully updated"
    click_on "Back"
  end

  test "destroying a Temple word of mouth" do
    visit temple_word_of_mouths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temple word of mouth was successfully destroyed"
  end
end
