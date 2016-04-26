class ItemsController < ApplicationController
  def index
    @item = Item.new
    @items = current_user.items
  end

  def create
    @item = current_user.items.create(date: params[:item][:date], body: params[:item][:body])
    redirect_to items_path
  end

  def edit
    @item = Item.find_by(params[:id])
  end

  def update
    @item = Item.find_by(params[:id])
    @item.update(params[:date, :body])
    redirect_to root_path
  end

  def destroy
    @item = Item.find_by(params[:id])
    @item.destroy
    redirect_to root_path
  end

  def show
    @item = Item.find_by(params[:id])
  end
end
