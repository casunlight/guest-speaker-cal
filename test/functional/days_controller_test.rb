require 'test_helper'

class DaysControllerTest < ActionController::TestCase
  setup do
    @day = days(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:days)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create day" do
    assert_difference('Day.count') do
      post :create, day: { date: @day.date, ordinal: @day.ordinal, week_id: @day.week_id }
    end

    assert_redirected_to day_path(assigns(:day))
  end

  test "should show day" do
    get :show, id: @day
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @day
    assert_response :success
  end

  test "should update day" do
    put :update, id: @day, day: { date: @day.date, ordinal: @day.ordinal, week_id: @day.week_id }
    assert_redirected_to day_path(assigns(:day))
  end

  test "should destroy day" do
    assert_difference('Day.count', -1) do
      delete :destroy, id: @day
    end

    assert_redirected_to days_path
  end
end
