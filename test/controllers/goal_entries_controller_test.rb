require 'test_helper'

class GoalEntriesControllerTest < ActionController::TestCase
  setup do
    @goal_entry = goal_entries(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:goal_entries)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create goal_entry" do
    assert_difference('GoalEntry.count') do
      post :create, goal_entry: { goal_id: @goal_entry.goal_id, status: @goal_entry.status }
    end

    assert_redirected_to goal_entry_path(assigns(:goal_entry))
  end

  test "should show goal_entry" do
    get :show, id: @goal_entry
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @goal_entry
    assert_response :success
  end

  test "should update goal_entry" do
    patch :update, id: @goal_entry, goal_entry: { goal_id: @goal_entry.goal_id, status: @goal_entry.status }
    assert_redirected_to goal_entry_path(assigns(:goal_entry))
  end

  test "should destroy goal_entry" do
    assert_difference('GoalEntry.count', -1) do
      delete :destroy, id: @goal_entry
    end

    assert_redirected_to goal_entries_path
  end
end
