class PublicitiesController < ApplicationController
  before_action :set_publicity, only: [:show, :edit, :update, :destroy]
  before_action :new_news

  respond_to :html

  def index
    @publicities = Publicity.all
    respond_with(@publicities)
  end

  def show
    respond_with(@publicity)
  end

  def new
    @publicity = Publicity.new
    respond_with(@publicity)
  end

  def edit
  end

  def create
    @publicity = Publicity.new(publicity_params)
    @publicity.save
    respond_with(@publicity)
  end

  def update
    @publicity.update(publicity_params)
    respond_with(@publicity)
  end

  def destroy
    @publicity.destroy
    respond_with(@publicity)
  end

  private
    def set_publicity
      @publicity = Publicity.find(params[:id])
    end

    def publicity_params
      params.require(:publicity).permit(:title, :body)
    end
end
