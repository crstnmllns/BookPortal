class PurchaseRentingsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_purchase_renting, only: [:show, :edit, :update, :destroy]

  def index
    # @purchase_rentings = PurchaseRenting.all
    @purchase_rentings = PurchaseRenting.where(user: current_user.id, status: ['reservado', 'rentado', 'vendido', 'comprado'])
  end

  def show
  end

  def new
    # @purchase_renting = PurchaseRenting.new
    @purchase_renting = current_user.purchase_rentings.build
  end

  # GET /purchase_rentings/1/edit
  def edit
    @purchase_renting = PurchaseRenting.find(params[:id])
      respond_to do |format|
        format.html
        format.js
      end
  end

  def create
    @purchase_renting = current_user.purchase_rentings.build(purchase_renting_params)

    respond_to do |format|
      if @purchase_renting.save
        format.js
        format.html { redirect_to @purchase_renting, notice: 'Purchase renting was successfully created.' }
        format.json { render :show, status: :created, location: @purchase_renting }
      else
        format.html { render :new }
        format.json { render json: @purchase_renting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /purchase_rentings/1 
  # PATCH/PUT /purchase_rentings/1.json
  def update
    respond_to do |format|
      if @purchase_renting.update(purchase_renting_params)
        format.js
        format.html { redirect_to @purchase_renting, notice: 'Purchase renting was successfully updated.' }
        format.json { render :show, status: :ok, location: @purchase_renting }
      else
        format.html { render :edit }
        format.json { render json: @purchase_renting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purchase_rentings/1
  # DELETE /purchase_rentings/1.json
  def destroy
    @purchase_renting.destroy
    respond_to do |format|
      format.js
      format.html { redirect_to purchase_rentings_url, notice: 'Purchase renting was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_purchase_renting
      @purchase_renting = PurchaseRenting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def purchase_renting_params
      params.require(:purchase_renting).permit(:status, :quantity, :price, :user_id, :book_id)
    end
end
