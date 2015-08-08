class ProvincesController < ApplicationController
  before_action :set_province, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @provinces = Province.all
    respond_with(@provinces)
  end

  def show
    respond_with(@province)
  end

  def new
    @province = Province.new
    respond_with(@province)
  end

  def edit
  end

  def create
    @province = Province.new(province_params)
    @province.save
    respond_with(@province)
  end

  def update
    @province.update(province_params)
    respond_with(@province)
  end

  def destroy
    @province.destroy
    respond_with(@province)
  end

  private
    def set_province
      @province = Province.find(params[:id])
    end

    def province_params
      params.require(:province).permit(:name)
    end
end
