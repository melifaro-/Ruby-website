class ProductsController < ApplicationController
  def index
    @products = Product.order("created_at ASC")
  end

  def show
    @product = Product.find(params[:id])
  end
end
