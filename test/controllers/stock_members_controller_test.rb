require 'test_helper'

class StockMembersControllerTest < ActionController::TestCase
  setup do
    @stock_member = stock_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_member" do
    assert_difference('StockMember.count') do
      post :create, stock_member: { seller_id: @stock_member.seller_id, stock_id: @stock_member.stock_id }
    end

    assert_redirected_to stock_member_path(assigns(:stock_member))
  end

  test "should show stock_member" do
    get :show, id: @stock_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_member
    assert_response :success
  end

  test "should update stock_member" do
    patch :update, id: @stock_member, stock_member: { seller_id: @stock_member.seller_id, stock_id: @stock_member.stock_id }
    assert_redirected_to stock_member_path(assigns(:stock_member))
  end

  test "should destroy stock_member" do
    assert_difference('StockMember.count', -1) do
      delete :destroy, id: @stock_member
    end

    assert_redirected_to stock_members_path
  end
end
