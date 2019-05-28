class WaresController < ApplicationController
  before_action :set_ware, only: [:show, :update, :destroy]

  # GET /wares
  def index
    @wares = Ware.all

    render json: @wares
  end

  # GET /wares/1
  def show
    render json: @ware
  end

  # POST /wares
  def create
    @ware = Ware.new(ware_params)

    if @ware.save
      render json: @ware, status: :created, location: @ware
    else
      render json: @ware.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /wares/1
  def update
    if @ware.update(ware_params)
      render json: @ware
    else
      render json: @ware.errors, status: :unprocessable_entity
    end
  end

  # DELETE /wares/1
  def destroy
    @ware.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ware
      @ware = Ware.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ware_params
      params.require(:ware).permit(:quantity, :price, :discount)
    end
end
