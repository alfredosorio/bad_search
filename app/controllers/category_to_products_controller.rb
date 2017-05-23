class CategoryToProductsController < ApplicationController
  before_action :set_category_to_product, only: [:show, :edit, :update, :destroy]

  # GET /category_to_products
  # GET /category_to_products.json
  def index
    @category_to_products = CategoryToProduct.all
  end

  # GET /category_to_products/1
  # GET /category_to_products/1.json
  def show
  end

  # GET /category_to_products/new
  def new
    @category_to_product = CategoryToProduct.new
  end

  # GET /category_to_products/1/edit
  def edit
  end

  # POST /category_to_products
  # POST /category_to_products.json
  def create
    @category_to_product = CategoryToProduct.new(category_to_product_params)

    respond_to do |format|
      if @category_to_product.save
        format.html { redirect_to @category_to_product, notice: 'Category to product was successfully created.' }
        format.json { render :show, status: :created, location: @category_to_product }
      else
        format.html { render :new }
        format.json { render json: @category_to_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /category_to_products/1
  # PATCH/PUT /category_to_products/1.json
  def update
    respond_to do |format|
      if @category_to_product.update(category_to_product_params)
        format.html { redirect_to @category_to_product, notice: 'Category to product was successfully updated.' }
        format.json { render :show, status: :ok, location: @category_to_product }
      else
        format.html { render :edit }
        format.json { render json: @category_to_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /category_to_products/1
  # DELETE /category_to_products/1.json
  def destroy
    @category_to_product.destroy
    respond_to do |format|
      format.html { redirect_to category_to_products_url, notice: 'Category to product was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category_to_product
      @category_to_product = CategoryToProduct.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def category_to_product_params
      params.fetch(:category_to_product, {})
    end
end
