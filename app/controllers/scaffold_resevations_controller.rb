class ScaffoldResevationsController < ApplicationController
  before_action :set_scaffold_resevation, only: [:show, :edit, :update, :destroy]

  # GET /scaffold_resevations
  # GET /scaffold_resevations.json
  def index
    @scaffold_resevations = ScaffoldResevation.all
  end

  # GET /scaffold_resevations/1
  # GET /scaffold_resevations/1.json
  def show
  end

  # GET /scaffold_resevations/new
  def new
    @scaffold_resevation = ScaffoldResevation.new
  end

  # GET /scaffold_resevations/1/edit
  def edit
  end

  # POST /scaffold_resevations
  # POST /scaffold_resevations.json
  def create
    @scaffold_resevation = ScaffoldResevation.new(scaffold_resevation_params)

    respond_to do |format|
      if @scaffold_resevation.save
        format.html { redirect_to @scaffold_resevation, notice: 'Scaffold resevation was successfully created.' }
        format.json { render :show, status: :created, location: @scaffold_resevation }
      else
        format.html { render :new }
        format.json { render json: @scaffold_resevation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /scaffold_resevations/1
  # PATCH/PUT /scaffold_resevations/1.json
  def update
    respond_to do |format|
      if @scaffold_resevation.update(scaffold_resevation_params)
        format.html { redirect_to @scaffold_resevation, notice: 'Scaffold resevation was successfully updated.' }
        format.json { render :show, status: :ok, location: @scaffold_resevation }
      else
        format.html { render :edit }
        format.json { render json: @scaffold_resevation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /scaffold_resevations/1
  # DELETE /scaffold_resevations/1.json
  def destroy
    @scaffold_resevation.destroy
    respond_to do |format|
      format.html { redirect_to scaffold_resevations_url, notice: 'Scaffold resevation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scaffold_resevation
      @scaffold_resevation = ScaffoldResevation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scaffold_resevation_params
      params.require(:scaffold_resevation).permit(:start_stay, :end_stay, :customer_scaffold_id, :room2_id)
    end
end
