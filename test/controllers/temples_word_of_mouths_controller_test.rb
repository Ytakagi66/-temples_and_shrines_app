require 'test_helper'

class TemplesWordOfMouthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @temples_word_of_mouth = temples_word_of_mouths(:one)
  end

  test "should get index" do
    get temples_word_of_mouths_url
    assert_response :success
  end

  test "should get new" do
    get new_temples_word_of_mouth_url
    assert_response :success
  end

  test "should create temples_word_of_mouth" do
    assert_difference('TemplesWordOfMouth.count') do
      post temples_word_of_mouths_url, params: { temples_word_of_mouth: { article: @temples_word_of_mouth.article, name: @temples_word_of_mouth.name, photo: @temples_word_of_mouth.photo, temple_id: @temples_word_of_mouth.temple_id, user_id: @temples_word_of_mouth.user_id } }
    end

    assert_redirected_to temples_word_of_mouth_url(TemplesWordOfMouth.last)
  end

  test "should show temples_word_of_mouth" do
    get temples_word_of_mouth_url(@temples_word_of_mouth)
    assert_response :success
  end

  test "should get edit" do
    get edit_temples_word_of_mouth_url(@temples_word_of_mouth)
    assert_response :success
  end

  test "should update temples_word_of_mouth" do
    patch temples_word_of_mouth_url(@temples_word_of_mouth), params: { temples_word_of_mouth: { article: @temples_word_of_mouth.article, name: @temples_word_of_mouth.name, photo: @temples_word_of_mouth.photo, temple_id: @temples_word_of_mouth.temple_id, user_id: @temples_word_of_mouth.user_id } }
    assert_redirected_to temples_word_of_mouth_url(@temples_word_of_mouth)
  end

  test "should destroy temples_word_of_mouth" do
    assert_difference('TemplesWordOfMouth.count', -1) do
      delete temples_word_of_mouth_url(@temples_word_of_mouth)
    end

    assert_redirected_to temples_word_of_mouths_url
  end
end
