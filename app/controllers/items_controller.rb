class ItemsController < ApplicationController
  def index
    @item = Item.new
    @items = current_user.items
  end

  def create
    @item = current_user.items.create(date: params[:item][:date], body: params[:item][:body])
    redirect_to items_path
  end

  def update
    item = current_user.items.find_by(params[:id])
    item.update(date: params[:item][:date], body: params[:item][:body])
    redirect_to items_path
  end

  def edit
    @item = current_user.items.find_by(params[:id])
  end

  def destroy
    item = current_user.items.find_by_id(params[:id])
    item.destroy
    redirect_to items_path
  end
end
