class PriceSettingsController < ApplicationController
  before_action :set_price_setting, only: %i[ show edit update destroy ]

  # GET /price_settings or /price_settings.json
  def index
    @price_settings = PriceSetting.all
  end

  # GET /price_settings/1 or /price_settings/1.json
  def show
  end

  # GET /price_settings/new
  def new
    @price_setting = PriceSetting.new
  end

  # GET /price_settings/1/edit
  def edit
  end

  # POST /price_settings or /price_settings.json
  def create
    @price_setting = PriceSetting.new(price_setting_params)

    respond_to do |format|
      if @price_setting.save
        format.html { redirect_to price_setting_url(@price_setting), notice: "Price setting was successfully created." }
        format.json { render :show, status: :created, location: @price_setting }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @price_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /price_settings/1 or /price_settings/1.json
  def update
    respond_to do |format|
      if @price_setting.update(price_setting_params)
        format.html { redirect_to price_setting_url(@price_setting), notice: "Price setting was successfully updated." }
        format.json { render :show, status: :ok, location: @price_setting }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @price_setting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /price_settings/1 or /price_settings/1.json
  def destroy
    @price_setting.destroy

    respond_to do |format|
      format.html { redirect_to price_settings_url, notice: "Price setting was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_price_setting
      @price_setting = PriceSetting.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def price_setting_params
      params.require(:price_setting).permit(:size, :price_multipler)
    end
end
