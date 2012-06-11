require 'test_helper'

class GuestbookEntriesControllerTest < ActionController::TestCase
  setup do
    @guestbook_entry = guestbook_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:guestbook_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create guestbook_entry" do
    assert_difference('GuestbookEntry.count') do
      post :create, guestbook_entry: @guestbook_entry.attributes
    end

    assert_redirected_to guestbook_entry_path(assigns(:guestbook_entry))
  end

  test "should show guestbook_entry" do
    get :show, id: @guestbook_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @guestbook_entry
    assert_response :success
  end

  test "should update guestbook_entry" do
    put :update, id: @guestbook_entry, guestbook_entry: @guestbook_entry.attributes
    assert_redirected_to guestbook_entry_path(assigns(:guestbook_entry))
  end

  test "should destroy guestbook_entry" do
    assert_difference('GuestbookEntry.count', -1) do
      delete :destroy, id: @guestbook_entry
    end

    assert_redirected_to guestbook_entries_path
  end
end
