require "application_system_test_case"

class TemplesWordOfMouthsTest < ApplicationSystemTestCase
  setup do
    @temples_word_of_mouth = temples_word_of_mouths(:one)
  end

  test "visiting the index" do
    visit temples_word_of_mouths_url
    assert_selector "h1", text: "Temples Word Of Mouths"
  end

  test "creating a Temples word of mouth" do
    visit temples_word_of_mouths_url
    click_on "New Temples Word Of Mouth"

    fill_in "Article", with: @temples_word_of_mouth.article
    fill_in "Name", with: @temples_word_of_mouth.name
    fill_in "Photo", with: @temples_word_of_mouth.photo
    fill_in "Temple", with: @temples_word_of_mouth.temple_id
    fill_in "User", with: @temples_word_of_mouth.user_id
    click_on "Create Temples word of mouth"

    assert_text "Temples word of mouth was successfully created"
    click_on "Back"
  end

  test "updating a Temples word of mouth" do
    visit temples_word_of_mouths_url
    click_on "Edit", match: :first

    fill_in "Article", with: @temples_word_of_mouth.article
    fill_in "Name", with: @temples_word_of_mouth.name
    fill_in "Photo", with: @temples_word_of_mouth.photo
    fill_in "Temple", with: @temples_word_of_mouth.temple_id
    fill_in "User", with: @temples_word_of_mouth.user_id
    click_on "Update Temples word of mouth"

    assert_text "Temples word of mouth was successfully updated"
    click_on "Back"
  end

  test "destroying a Temples word of mouth" do
    visit temples_word_of_mouths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Temples word of mouth was successfully destroyed"
  end
end
