class ProductsController < ApplicationController
    def index
        @products = Product.all
    end

    def create
        @product = Product.create(product_params)
        redirect_to products_path
    end

    def inventory
        set_product
        # binding.pry
        render plain: (@product.inventory.to_i > 0).to_s
    end

    def description
        set_product
        render plain: @product.description
    end
    private
      # Use callbacks to share common setup or constraints between actions.
    def set_product
        @product = Product.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def product_params
        params.require(:product).permit(:name, :description, :inventory, :price)
    end
end
