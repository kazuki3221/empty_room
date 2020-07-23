class Room2sController < ApplicationController
  before_action :set_room2, only: [:show, :edit, :update, :destroy]

  # GET /room2s
  # GET /room2s.json
  def index
    @room2s = Room2.all
  end

  # GET /room2s/1
  # GET /room2s/1.json
  def show
  end

  # GET /room2s/new
  def new
    @room2 = Room2.new
  end

  # GET /room2s/1/edit
  def edit
  end

  # POST /room2s
  # POST /room2s.json
  def create
    @room2 = Room2.new(room2_params)

    respond_to do |format|
      if @room2.save
        format.html { redirect_to @room2, notice: 'Room2 was successfully created.' }
        format.json { render :show, status: :created, location: @room2 }
      else
        format.html { render :new }
        format.json { render json: @room2.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /room2s/1
  # PATCH/PUT /room2s/1.json
  def update
    respond_to do |format|
      if @room2.update(room2_params)
        format.html { redirect_to @room2, notice: 'Room2 was successfully updated.' }
        format.json { render :show, status: :ok, location: @room2 }
      else
        format.html { render :edit }
        format.json { render json: @room2.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /room2s/1
  # DELETE /room2s/1.json
  def destroy
    @room2.destroy
    respond_to do |format|
      format.html { redirect_to room2s_url, notice: 'Room2 was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_room2
      @room2 = Room2.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def room2_params
      params.require(:room2).permit(:number, :floor, :room_type, :price)
    end
end
