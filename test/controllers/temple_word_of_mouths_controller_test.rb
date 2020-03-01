require 'test_helper'

class TempleWordOfMouthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temple_word_of_mouth = temple_word_of_mouths(:one)
  end

  test "should get index" do
    get temple_word_of_mouths_url
    assert_response :success
  end

  test "should get new" do
    get new_temple_word_of_mouth_url
    assert_response :success
  end

  test "should create temple_word_of_mouth" do
    assert_difference('TempleWordOfMouth.count') do
      post temple_word_of_mouths_url, params: { temple_word_of_mouth: { article: @temple_word_of_mouth.article, name: @temple_word_of_mouth.name, photo: @temple_word_of_mouth.photo, temple_id: @temple_word_of_mouth.temple_id, user_id: @temple_word_of_mouth.user_id } }
    end

    assert_redirected_to temple_word_of_mouth_url(TempleWordOfMouth.last)
  end

  test "should show temple_word_of_mouth" do
    get temple_word_of_mouth_url(@temple_word_of_mouth)
    assert_response :success
  end

  test "should get edit" do
    get edit_temple_word_of_mouth_url(@temple_word_of_mouth)
    assert_response :success
  end

  test "should update temple_word_of_mouth" do
    patch temple_word_of_mouth_url(@temple_word_of_mouth), params: { temple_word_of_mouth: { article: @temple_word_of_mouth.article, name: @temple_word_of_mouth.name, photo: @temple_word_of_mouth.photo, temple_id: @temple_word_of_mouth.temple_id, user_id: @temple_word_of_mouth.user_id } }
    assert_redirected_to temple_word_of_mouth_url(@temple_word_of_mouth)
  end

  test "should destroy temple_word_of_mouth" do
    assert_difference('TempleWordOfMouth.count', -1) do
      delete temple_word_of_mouth_url(@temple_word_of_mouth)
    end

    assert_redirected_to temple_word_of_mouths_url
  end
end
