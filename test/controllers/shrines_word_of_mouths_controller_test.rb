require 'test_helper'

class ShrinesWordOfMouthsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @shrines_word_of_mouth = shrines_word_of_mouths(:one)
  end

  test "should get index" do
    get shrines_word_of_mouths_url
    assert_response :success
  end

  test "should get new" do
    get new_shrines_word_of_mouth_url
    assert_response :success
  end

  test "should create shrines_word_of_mouth" do
    assert_difference('ShrinesWordOfMouth.count') do
      post shrines_word_of_mouths_url, params: { shrines_word_of_mouth: { article: @shrines_word_of_mouth.article, name: @shrines_word_of_mouth.name, photo: @shrines_word_of_mouth.photo, shrine_id: @shrines_word_of_mouth.shrine_id, user_id: @shrines_word_of_mouth.user_id } }
    end

    assert_redirected_to shrines_word_of_mouth_url(ShrinesWordOfMouth.last)
  end

  test "should show shrines_word_of_mouth" do
    get shrines_word_of_mouth_url(@shrines_word_of_mouth)
    assert_response :success
  end

  test "should get edit" do
    get edit_shrines_word_of_mouth_url(@shrines_word_of_mouth)
    assert_response :success
  end

  test "should update shrines_word_of_mouth" do
    patch shrines_word_of_mouth_url(@shrines_word_of_mouth), params: { shrines_word_of_mouth: { article: @shrines_word_of_mouth.article, name: @shrines_word_of_mouth.name, photo: @shrines_word_of_mouth.photo, shrine_id: @shrines_word_of_mouth.shrine_id, user_id: @shrines_word_of_mouth.user_id } }
    assert_redirected_to shrines_word_of_mouth_url(@shrines_word_of_mouth)
  end

  test "should destroy shrines_word_of_mouth" do
    assert_difference('ShrinesWordOfMouth.count', -1) do
      delete shrines_word_of_mouth_url(@shrines_word_of_mouth)
    end

    assert_redirected_to shrines_word_of_mouths_url
  end
end
