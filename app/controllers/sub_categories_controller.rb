class SubCategoriesController < ApplicationController
  before_action :set_sub_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @sub_categories = SubCategory.all
    respond_with(@sub_categories)
  end

  def show
    respond_with(@sub_category)
  end

  def new
    @sub_category = SubCategory.new
    respond_with(@sub_category)
  end

  def edit
  end

  def create
    @sub_category = SubCategory.new(sub_category_params)
    @sub_category.save
    respond_with(@sub_category)
  end

  def update
    @sub_category.update(sub_category_params)
    respond_with(@sub_category)
  end

  def destroy
    @sub_category.destroy
    respond_with(@sub_category)
  end

  private
    def set_sub_category
      @sub_category = SubCategory.find(params[:id])
    end

    def sub_category_params
      params.require(:sub_category).permit(:category_id, :name, :description)
    end
end
