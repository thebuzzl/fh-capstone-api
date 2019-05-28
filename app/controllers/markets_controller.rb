class MarketsController < ApplicationController
  before_action :set_market, only: [:show, :update, :destroy]

  # GET /markets
  def index
    @markets = Market.all

    render json: @markets
  end

  # GET /markets/1
  def show
    render json: @market
  end

  # POST /markets
  def create
    @market = Market.new(market_params)

    if @market.save
      render json: @market, status: :created, location: @market
    else
      render json: @market.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /markets/1
  def update
    if @market.update(market_params)
      render json: @market
    else
      render json: @market.errors, status: :unprocessable_entity
    end
  end

  # DELETE /markets/1
  def destroy
    @market.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_market
      @market = Market.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def market_params
      params.require(:market).permit(:name, :address1, :address2, :city, :state, :zip, :latitude, :longitude, :url, :phone, :open_mon, :open_tue, :open_wed, :open_thu, :open_fri, :open_sat, :open_sun, :close_mon, :close_tue, :close_wed, :close_thu, :close_fri, :close_sat, :close_sun, :manager)
    end
end
