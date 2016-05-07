class WarehouseStocksController < ApplicationController
  before_action :set_warehouse_stock, only: [:show, :edit, :update, :destroy]

  # GET /warehouse_stocks
  # GET /warehouse_stocks.json
  def index
    @warehouse_stocks = WarehouseStock.all
  end

  # GET /warehouse_stocks/1
  # GET /warehouse_stocks/1.json
  def show
  end

  # GET /warehouse_stocks/new
  def new
    @warehouse_stock = WarehouseStock.new
  end

  # GET /warehouse_stocks/1/edit
  def edit
  end

  # POST /warehouse_stocks
  # POST /warehouse_stocks.json
  def create
    @warehouse_stock = WarehouseStock.new(warehouse_stock_params)

    respond_to do |format|
      if @warehouse_stock.save
        format.html { redirect_to @warehouse_stock, notice: 'Warehouse stock was successfully created.' }
        format.json { render :show, status: :created, location: @warehouse_stock }
      else
        format.html { render :new }
        format.json { render json: @warehouse_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /warehouse_stocks/1
  # PATCH/PUT /warehouse_stocks/1.json
  def update
    respond_to do |format|
      if @warehouse_stock.update(warehouse_stock_params)
        format.html { redirect_to @warehouse_stock, notice: 'Warehouse stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @warehouse_stock }
      else
        format.html { render :edit }
        format.json { render json: @warehouse_stock.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /warehouse_stocks/1
  # DELETE /warehouse_stocks/1.json
  def destroy
    @warehouse_stock.destroy
    respond_to do |format|
      format.html { redirect_to warehouse_stocks_url, notice: 'Warehouse stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_warehouse_stock
      @warehouse_stock = WarehouseStock.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def warehouse_stock_params
      params.require(:warehouse_stock).permit(:stock_id, :warehouse_id, :product_id, :quantity)
    end
end
