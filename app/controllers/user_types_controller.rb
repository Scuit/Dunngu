class UserTypesController < ApplicationController
  before_action :set_user_type, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @user_types = UserType.all
    respond_with(@user_types)
  end

  def show
    respond_with(@user_type)
  end

  def new
    @user_type = UserType.new
    respond_with(@user_type)
  end

  def edit
  end

  def create
    @user_type = UserType.new(user_type_params)
    @user_type.save
    respond_with(@user_type)
  end

  def update
    @user_type.update(user_type_params)
    respond_with(@user_type)
  end

  def destroy
    @user_type.destroy
    respond_with(@user_type)
  end

  private
    def set_user_type
      @user_type = UserType.find(params[:id])
    end

    def user_type_params
      params.require(:user_type).permit(:code, :name)
    end
end
