class RegionsController < ApplicationController
  before_action :set_region, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @regions = Region.all
    respond_with(@regions)
  end

  def show
    respond_with(@region)
  end

  def new
    @region = Region.new
    respond_with(@region)
  end

  def edit
  end

  def create
    @region = Region.new(region_params)
    @region.save
    respond_with(@region)
  end

  def update
    @region.update(region_params)
    respond_with(@region)
  end

  def destroy
    @region.destroy
    respond_with(@region)
  end

  private
    def set_region
      @region = Region.find(params[:id])
    end

    def region_params
      params.require(:region).permit(:name)
    end
end
