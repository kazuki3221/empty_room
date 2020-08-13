class ResevationsController < ApplicationController
  before_action :set_resevation, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!


  # GET /resevations
  # GET /resevations.json
  def index

    @search_params = resevation_params
    @search_params[:start_stay] ||= Date.today
    @search_params[:end_stay] ||= Date.today

    @resevations = Resevation.where('start_stay <= ?', @search_params[:start_stay])
                             .where('end_stay >= ?', @search_params[:end_stay])

  end

  # GET /resevations/1
  # GET /resevations/1.json
  def show
  end

  # GET /resevations/new
  def new
    @resevation = Resevation.new(params[:resevation])
  end

  # GET /resevations/1/edit
  def edit
  end

  # POST /resevations
  # POST /resevations.json
  def create
    @resevation = Resevation.new(resevation_params)
    @resevation.user_id = current_user.id
    respond_to do |format|
      if @resevation.save
        format.html { redirect_to @resevation, notice: 'Resevation was successfully created.' }
        format.json { render :show, status: :created, location: @resevation }
      else
        format.html { render :new }
        format.json { render json: @resevation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resevations/1
  # PATCH/PUT /resevations/1.json
  def update
    respond_to do |format|
      @resevation.user_id = current_user.id
      if @resevation.update(resevation_params)
        format.html { redirect_to @resevation, notice: 'Resevation was successfully updated.' }
        format.json { render :show, status: :ok, location: @resevation }
      else
        format.html { render :edit }
        format.json { render json: @resevation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resevations/1
  # DELETE /resevations/1.json
  def destroy
    @resevation.destroy
    respond_to do |format|
      format.html { redirect_to resevations_url, notice: 'Resevation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resevation
      @resevation = Resevation.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def resevation_params
      params.fetch(:resevation,{}).permit(:start_stay, :end_stay, :room_id, :customer_id, :user_id)
    end

  end
