require 'test_helper'

class StockTransactionsControllerTest < ActionController::TestCase
  setup do
    @stock_transaction = stock_transactions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:stock_transactions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create stock_transaction" do
    assert_difference('StockTransaction.count') do
      post :create, stock_transaction: { destination_warehouse_id: @stock_transaction.destination_warehouse_id, invoice_uid: @stock_transaction.invoice_uid, origin_warehouse_id: @stock_transaction.origin_warehouse_id, product_id: @stock_transaction.product_id, quantity: @stock_transaction.quantity, seller_id: @stock_transaction.seller_id, status: @stock_transaction.status }
    end

    assert_redirected_to stock_transaction_path(assigns(:stock_transaction))
  end

  test "should show stock_transaction" do
    get :show, id: @stock_transaction
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @stock_transaction
    assert_response :success
  end

  test "should update stock_transaction" do
    patch :update, id: @stock_transaction, stock_transaction: { destination_warehouse_id: @stock_transaction.destination_warehouse_id, invoice_uid: @stock_transaction.invoice_uid, origin_warehouse_id: @stock_transaction.origin_warehouse_id, product_id: @stock_transaction.product_id, quantity: @stock_transaction.quantity, seller_id: @stock_transaction.seller_id, status: @stock_transaction.status }
    assert_redirected_to stock_transaction_path(assigns(:stock_transaction))
  end

  test "should destroy stock_transaction" do
    assert_difference('StockTransaction.count', -1) do
      delete :destroy, id: @stock_transaction
    end

    assert_redirected_to stock_transactions_path
  end
end
