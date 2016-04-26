class ItemsController < ApplicationController
  def index
    @items = Item.all
    @item = Item.new
  end

  def create
    @item = Item.create(date: params[:item][:date], body: params[:item][:body])
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
end
