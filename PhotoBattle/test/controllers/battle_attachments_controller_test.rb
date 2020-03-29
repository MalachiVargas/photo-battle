require 'test_helper'

class BattleAttachmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @battle_attachment = battle_attachments(:one)
  end

  test "should get index" do
    get battle_attachments_url
    assert_response :success
  end

  test "should get new" do
    get new_battle_attachment_url
    assert_response :success
  end

  test "should create battle_attachment" do
    assert_difference('BattleAttachment.count') do
      post battle_attachments_url, params: { battle_attachment: { avatar: @battle_attachment.avatar, battle_id: @battle_attachment.battle_id } }
    end

    assert_redirected_to battle_attachment_url(BattleAttachment.last)
  end

  test "should show battle_attachment" do
    get battle_attachment_url(@battle_attachment)
    assert_response :success
  end

  test "should get edit" do
    get edit_battle_attachment_url(@battle_attachment)
    assert_response :success
  end

  test "should update battle_attachment" do
    patch battle_attachment_url(@battle_attachment), params: { battle_attachment: { avatar: @battle_attachment.avatar, battle_id: @battle_attachment.battle_id } }
    assert_redirected_to battle_attachment_url(@battle_attachment)
  end

  test "should destroy battle_attachment" do
    assert_difference('BattleAttachment.count', -1) do
      delete battle_attachment_url(@battle_attachment)
    end

    assert_redirected_to battle_attachments_url
  end
end
