class Api::V1::ProductsController < ApplicationController
  before_action :set_product, only: %i[ show edit update destroy ]

  def index
    @products = Product.all
    render json: @products
  end

  def show
    if @product
      render json: @product
    else
      render json: @product.errors
    end
  end

  def new
    @product = Product.new
  end

  def edit
  end

  def create
    @product = product.new(product_params)

    if @product.save
      render json: @product
    else
      render json: @product.errors
    end
  end

  def update
  end

  def destroy
    @product.destroy

    render json: { notice: "product was successfully removed." }
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end

  def product_params
    params.require(:product).permit(:name, :price, :sale_price, :stock, :description, :category_id)
  end
end
