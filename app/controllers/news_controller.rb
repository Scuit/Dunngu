class NewsController < ApplicationController
  before_action :set_news, only: [:show, :edit, :update, :destroy]
  before_action :new_news

  respond_to :html

  def index
    @news_all = News.all
    respond_with(@news_all)
  end

  def show
    respond_with(@news)
  end

  def new
    @new = News.new
    respond_with(@new)
  end

  def edit
  end

  def create
    @news = News.new(news_params)
    @news.save
    respond_with(@news)
  end

  def update
    @new.update(news_params)
    respond_with(@new)
  end

  def destroy
    @news.destroy
    respond_with(@news)
  end

  private
  def set_news
    @new = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:user_id, :sub_category_id, :province_id, :title, :body, :date_time, :image, :status)
  end
end
