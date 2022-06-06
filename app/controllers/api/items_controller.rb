class Api::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    item = Item.find(params[:id])
    render json: item
  end

  def create
    item = Item.new(params.require(:item).permit(:name, :price))
    if(item.save)
      render json: item
    else
      render json: {errors: item.errors.full_messages}, status: 422
  end

  def destroy
    item = Item.find(params[:id])
    render json: item.destroy
  end
end
