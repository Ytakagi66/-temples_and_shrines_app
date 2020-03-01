require 'test_helper'

class ShrineWordOfMouthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shrine_word_of_mouth = shrine_word_of_mouths(:one)
  end

  test "should get index" do
    get shrine_word_of_mouths_url
    assert_response :success
  end

  test "should get new" do
    get new_shrine_word_of_mouth_url
    assert_response :success
  end

  test "should create shrine_word_of_mouth" do
    assert_difference('ShrineWordOfMouth.count') do
      post shrine_word_of_mouths_url, params: { shrine_word_of_mouth: { article: @shrine_word_of_mouth.article, name: @shrine_word_of_mouth.name, photo: @shrine_word_of_mouth.photo, shrine_id: @shrine_word_of_mouth.shrine_id, user_id: @shrine_word_of_mouth.user_id } }
    end

    assert_redirected_to shrine_word_of_mouth_url(ShrineWordOfMouth.last)
  end

  test "should show shrine_word_of_mouth" do
    get shrine_word_of_mouth_url(@shrine_word_of_mouth)
    assert_response :success
  end

  test "should get edit" do
    get edit_shrine_word_of_mouth_url(@shrine_word_of_mouth)
    assert_response :success
  end

  test "should update shrine_word_of_mouth" do
    patch shrine_word_of_mouth_url(@shrine_word_of_mouth), params: { shrine_word_of_mouth: { article: @shrine_word_of_mouth.article, name: @shrine_word_of_mouth.name, photo: @shrine_word_of_mouth.photo, shrine_id: @shrine_word_of_mouth.shrine_id, user_id: @shrine_word_of_mouth.user_id } }
    assert_redirected_to shrine_word_of_mouth_url(@shrine_word_of_mouth)
  end

  test "should destroy shrine_word_of_mouth" do
    assert_difference('ShrineWordOfMouth.count', -1) do
      delete shrine_word_of_mouth_url(@shrine_word_of_mouth)
    end

    assert_redirected_to shrine_word_of_mouths_url
  end
end
