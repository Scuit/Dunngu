class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @new = News.new
    @all = Province.where(name: "todas")
    @news_all = News.all
    respond_with(@news_all)
  end

  def show
    @all = Province.where(name: "todas")
    respond_with(@news)
  end

  def new
    @new = News.new
    respond_with(@news)
  end

  def edit
    @all = Province.where(name: "todas")
  end

  def create
    @news = News.new(news_params)
    @news.save
    respond_with(@news)
  end

  def update
    @news.update(news_params)
    respond_with(@news)
  end

  def destroy
    @news.destroy
    respond_with(@news)
  end

  private
  def set_news
    @news = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:user_id, :sub_category_id, :province_id, :title, :body, :date_time, :image, :status)
  end
end
