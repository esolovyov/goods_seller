require 'test_helper'

class WarehouseStocksControllerTest < ActionController::TestCase
  setup do
    @warehouse_stock = warehouse_stocks(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:warehouse_stocks)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create warehouse_stock" do
    assert_difference('WarehouseStock.count') do
      post :create, warehouse_stock: { product_id: @warehouse_stock.product_id, quantity: @warehouse_stock.quantity, stock_id: @warehouse_stock.stock_id, warehouse_id: @warehouse_stock.warehouse_id }
    end

    assert_redirected_to warehouse_stock_path(assigns(:warehouse_stock))
  end

  test "should show warehouse_stock" do
    get :show, id: @warehouse_stock
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @warehouse_stock
    assert_response :success
  end

  test "should update warehouse_stock" do
    patch :update, id: @warehouse_stock, warehouse_stock: { product_id: @warehouse_stock.product_id, quantity: @warehouse_stock.quantity, stock_id: @warehouse_stock.stock_id, warehouse_id: @warehouse_stock.warehouse_id }
    assert_redirected_to warehouse_stock_path(assigns(:warehouse_stock))
  end

  test "should destroy warehouse_stock" do
    assert_difference('WarehouseStock.count', -1) do
      delete :destroy, id: @warehouse_stock
    end

    assert_redirected_to warehouse_stocks_path
  end
end
