class StockMembersController < ApplicationController
  before_action :set_stock_member, only: [:show, :edit, :update, :destroy]

  # GET /stock_members
  # GET /stock_members.json
  def index
    @stock_members = StockMember.all
  end

  # GET /stock_members/1
  # GET /stock_members/1.json
  def show
  end

  # GET /stock_members/new
  def new
    @stock_member = StockMember.new
  end

  # GET /stock_members/1/edit
  def edit
  end

  # POST /stock_members
  # POST /stock_members.json
  def create
    @stock_member = StockMember.new(stock_member_params)

    respond_to do |format|
      if @stock_member.save
        format.html { redirect_to @stock_member, notice: 'Stock member was successfully created.' }
        format.json { render :show, status: :created, location: @stock_member }
      else
        format.html { render :new }
        format.json { render json: @stock_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /stock_members/1
  # PATCH/PUT /stock_members/1.json
  def update
    respond_to do |format|
      if @stock_member.update(stock_member_params)
        format.html { redirect_to @stock_member, notice: 'Stock member was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock_member }
      else
        format.html { render :edit }
        format.json { render json: @stock_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stock_members/1
  # DELETE /stock_members/1.json
  def destroy
    @stock_member.destroy
    respond_to do |format|
      format.html { redirect_to stock_members_url, notice: 'Stock member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_stock_member
      @stock_member = StockMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def stock_member_params
      params.require(:stock_member).permit(:seller_id, :stock_id)
    end
end
