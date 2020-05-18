class PinsController < ApplicationController
  before_action :set_pin, only: [:show, :edit, :update, :destroy]
  respond_to :html

  # GET /pins
  # GET /pins.json
  def index
    @pins = Pin.all
    respond_with(@pins)
  end

  # GET /pins/1
  # GET /pins/1.json
  def show
    respond_with(@pin)
  end

  # GET /pins/new
  def new
    @pin = Pin.new
    respond_with(@pin)
  end

  # GET /pins/1/edit
  def edit
  end

  # POST /pins
  # POST /pins.json
  def create
    @pin = Pin.new(pin_params)
    @pin.save
    respond_with(@pin)
  end

  # PATCH/PUT /pins/1
  # PATCH/PUT /pins/1.json
  def update
    @pin.update(pin_params)
    respond_with(@pin)
  end

  # DELETE /pins/1
  # DELETE /pins/1.json
  def destroy
    @pin.destroy
    respond_with(@pin)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pin
      @pin = Pin.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def pin_params
      params.require(:pin).permit(:description)
    end
end
