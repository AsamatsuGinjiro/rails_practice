class WeightHistriesController < ApplicationController
  before_action :set_weight_histry, only: %i[ show edit update destroy ]

  # GET /weight_histries or /weight_histries.json
  def index
    @weight_histries = WeightHistry.all
  end

  # GET /weight_histries/1 or /weight_histries/1.json
  def show
  end

  # GET /weight_histries/new
  def new
    @weight_histry = WeightHistry.new
  end

  # GET /weight_histries/1/edit
  def edit
  end

  # POST /weight_histries or /weight_histries.json
  def create
    @weight_histry = WeightHistry.new(weight_histry_params)

    respond_to do |format|
      if @weight_histry.save
        format.html { redirect_to @weight_histry, notice: "Weight histry was successfully created." }
        format.json { render :show, status: :created, location: @weight_histry }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @weight_histry.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /weight_histries/1 or /weight_histries/1.json
  def update
    respond_to do |format|
      if @weight_histry.update(weight_histry_params)
        format.html { redirect_to @weight_histry, notice: "Weight histry was successfully updated." }
        format.json { render :show, status: :ok, location: @weight_histry }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @weight_histry.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /weight_histries/1 or /weight_histries/1.json
  def destroy
    @weight_histry.destroy
    respond_to do |format|
      format.html { redirect_to weight_histries_url, notice: "Weight histry was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_weight_histry
      @weight_histry = WeightHistry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def weight_histry_params
      params.require(:weight_histry).permit(:user_id, :weight, :memo)
    end
end
