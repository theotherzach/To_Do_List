class ItemsController < ApplicationController
  def index
    @item = Item.all
  end

  def new
    @item = Item.new
  end

  def show
    @item = Item.find_by(params[:id])
  end

  def create
    @item = Item.create(:date, :body)
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
