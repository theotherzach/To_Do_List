class Api::ItemsController < ApplicationController

  before_action :authorize_api
  before_action :assign_item, only: [:show, :update]

  def index
    render json: current_user.items
  end

  def show
    render json: @item
  end

  def update
    @item.update(item_params)

    if @item.save
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def create
    item = Item.new(item_params)

    if item.save
      render json: @item
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  private

  def authorize_api
    return if signed_in?

    render json: { message: "Not authorized" }, status: :unauthorized
  end

  def item_params
    params.require(:item).permit(:name, :email, :biography)
  end

  def assign_item
    @item = current_user.items.find(params[:id])
  end
end
