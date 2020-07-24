class ScaffoldSalesController < ApplicationController
  before_action :set_scaffold_sale, only: [:show, :edit, :update, :destroy]

  # GET /scaffold_sales
  # GET /scaffold_sales.json
  def index
    @scaffold_sales = ScaffoldSale.all
  end

  # GET /scaffold_sales/1
  # GET /scaffold_sales/1.json
  def show
  end

  # GET /scaffold_sales/new
  def new
    @scaffold_sale = ScaffoldSale.new
  end

  # GET /scaffold_sales/1/edit
  def edit
  end

  # POST /scaffold_sales
  # POST /scaffold_sales.json
  def create
    @scaffold_sale = ScaffoldSale.new(scaffold_sale_params)

    respond_to do |format|
      if @scaffold_sale.save
        format.html { redirect_to @scaffold_sale, notice: 'Scaffold sale was successfully created.' }
        format.json { render :show, status: :created, location: @scaffold_sale }
      else
        format.html { render :new }
        format.json { render json: @scaffold_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffold_sales/1
  # PATCH/PUT /scaffold_sales/1.json
  def update
    respond_to do |format|
      if @scaffold_sale.update(scaffold_sale_params)
        format.html { redirect_to @scaffold_sale, notice: 'Scaffold sale was successfully updated.' }
        format.json { render :show, status: :ok, location: @scaffold_sale }
      else
        format.html { render :edit }
        format.json { render json: @scaffold_sale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffold_sales/1
  # DELETE /scaffold_sales/1.json
  def destroy
    @scaffold_sale.destroy
    respond_to do |format|
      format.html { redirect_to scaffold_sales_url, notice: 'Scaffold sale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffold_sale
      @scaffold_sale = ScaffoldSale.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scaffold_sale_params
      params.require(:scaffold_sale).permit(:start_stay, :end_stay, :customer_scaffold_id, :room2_id)
    end
end
