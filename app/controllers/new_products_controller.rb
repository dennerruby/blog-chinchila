class NewProductsController < ApplicationController
  before_action :set_new_product, only: %i[ show edit update destroy ]

  # GET /new_products or /new_products.json
  def index
    @new_products = NewProduct.all
  end

  # GET /new_products/1 or /new_products/1.json
  def show
  end

  # GET /new_products/new
  def new
    @new_product = NewProduct.new
  end

  # GET /new_products/1/edit
  def edit
  end

  # POST /new_products or /new_products.json
  def create
    @new_product = NewProduct.new(new_product_params)

    respond_to do |format|
      if @new_product.save
        format.html { redirect_to @new_product, notice: "New product was successfully created." }
        format.json { render :show, status: :created, location: @new_product }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @new_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /new_products/1 or /new_products/1.json
  def update
    respond_to do |format|
      if @new_product.update(new_product_params)
        format.html { redirect_to @new_product, notice: "New product was successfully updated." }
        format.json { render :show, status: :ok, location: @new_product }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @new_product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /new_products/1 or /new_products/1.json
  def destroy
    @new_product.destroy
    respond_to do |format|
      format.html { redirect_to new_products_url, notice: "New product was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_new_product
      @new_product = NewProduct.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def new_product_params
      params.require(:new_product).permit(:title, :author, :featured_image, :content)
    end
end
