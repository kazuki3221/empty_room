class CustomerScaffoldsController < ApplicationController
  before_action :set_customer_scaffold, only: [:show, :edit, :update, :destroy]

  # GET /customer_scaffolds
  # GET /customer_scaffolds.json
  def index
    @customer_scaffolds = CustomerScaffold.all
  end

  # GET /customer_scaffolds/1
  # GET /customer_scaffolds/1.json
  def show
  end

  # GET /customer_scaffolds/new
  def new
    @customer_scaffold = CustomerScaffold.new
  end

  # GET /customer_scaffolds/1/edit
  def edit
  end

  # POST /customer_scaffolds
  # POST /customer_scaffolds.json
  def create
    @customer_scaffold = CustomerScaffold.new(customer_scaffold_params)

    respond_to do |format|
      if @customer_scaffold.save
        format.html { redirect_to @customer_scaffold, notice: 'Customer scaffold was successfully created.' }
        format.json { render :show, status: :created, location: @customer_scaffold }
      else
        format.html { render :new }
        format.json { render json: @customer_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customer_scaffolds/1
  # PATCH/PUT /customer_scaffolds/1.json
  def update
    respond_to do |format|
      if @customer_scaffold.update(customer_scaffold_params)
        format.html { redirect_to @customer_scaffold, notice: 'Customer scaffold was successfully updated.' }
        format.json { render :show, status: :ok, location: @customer_scaffold }
      else
        format.html { render :edit }
        format.json { render json: @customer_scaffold.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customer_scaffolds/1
  # DELETE /customer_scaffolds/1.json
  def destroy
    @customer_scaffold.destroy
    respond_to do |format|
      format.html { redirect_to customer_scaffolds_url, notice: 'Customer scaffold was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customer_scaffold
      @customer_scaffold = CustomerScaffold.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customer_scaffold_params
      params.require(:customer_scaffold).permit(:email, :first_name, :first_name_kana, :last_name, :last_name_kana, :tel, :placeholder, :birthday)
    end
end
