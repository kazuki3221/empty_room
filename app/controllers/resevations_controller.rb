class ResevationsController < ApplicationController
  def new
    @resevation = Resevation.new
  end

  def show
  end

  def create
    @resevation = Resevation.new(resevation_params)
    if @resevation.save
      # 保存の成功をここで扱う。
    else
      render 'new'
    end
  end

  private

    def resevation_params
      params.require(:resevation).permit(:start_stay, :end_stay)
    end
end
