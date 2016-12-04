class GarmentsController < ApplicationController
  def index
    @garments = Garment.all
  end

  def show
    @garment = Garment.find(params[:id])

  end

  def new
    @garment = Garment.new
  end

  def create
    @garment = Garment.new(garment_params)
    if @garment.save
      redirect_to @garment
    else
      render :new
    end
  end

  private

  def garment_params
    params.require(:garment).permit(:name)
  end
end
