require "application_system_test_case"

class ShrineWordOfMouthsTest < ApplicationSystemTestCase
  setup do
    @shrine_word_of_mouth = shrine_word_of_mouths(:one)
  end

  test "visiting the index" do
    visit shrine_word_of_mouths_url
    assert_selector "h1", text: "Shrine Word Of Mouths"
  end

  test "creating a Shrine word of mouth" do
    visit shrine_word_of_mouths_url
    click_on "New Shrine Word Of Mouth"

    fill_in "Article", with: @shrine_word_of_mouth.article
    fill_in "Name", with: @shrine_word_of_mouth.name
    fill_in "Photo", with: @shrine_word_of_mouth.photo
    fill_in "Shrine", with: @shrine_word_of_mouth.shrine_id
    fill_in "User", with: @shrine_word_of_mouth.user_id
    click_on "Create Shrine word of mouth"

    assert_text "Shrine word of mouth was successfully created"
    click_on "Back"
  end

  test "updating a Shrine word of mouth" do
    visit shrine_word_of_mouths_url
    click_on "Edit", match: :first

    fill_in "Article", with: @shrine_word_of_mouth.article
    fill_in "Name", with: @shrine_word_of_mouth.name
    fill_in "Photo", with: @shrine_word_of_mouth.photo
    fill_in "Shrine", with: @shrine_word_of_mouth.shrine_id
    fill_in "User", with: @shrine_word_of_mouth.user_id
    click_on "Update Shrine word of mouth"

    assert_text "Shrine word of mouth was successfully updated"
    click_on "Back"
  end

  test "destroying a Shrine word of mouth" do
    visit shrine_word_of_mouths_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Shrine word of mouth was successfully destroyed"
  end
end
