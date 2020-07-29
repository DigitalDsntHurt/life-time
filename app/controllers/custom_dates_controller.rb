class CustomDatesController < ApplicationController
  before_action :set_custom_date, only: [:show, :edit, :update, :destroy]

  # GET /custom_dates
  # GET /custom_dates.json
  def index
    @custom_dates = CustomDate.all
  end

  # GET /custom_dates/1
  # GET /custom_dates/1.json
  def show
  end

  # GET /custom_dates/new
  def new
    @custom_date = CustomDate.new
  end

  # GET /custom_dates/1/edit
  def edit
  end

  # POST /custom_dates
  # POST /custom_dates.json
  def create
    @custom_date = CustomDate.new(custom_date_params)

    respond_to do |format|
      if @custom_date.save
        format.html { redirect_to @custom_date, notice: 'Custom date was successfully created.' }
        format.json { render :show, status: :created, location: @custom_date }
      else
        format.html { render :new }
        format.json { render json: @custom_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /custom_dates/1
  # PATCH/PUT /custom_dates/1.json
  def update
    respond_to do |format|
      if @custom_date.update(custom_date_params)
        format.html { redirect_back(fallback_location: root_path) }
        format.json { render :show, status: :ok, location: @custom_date }
      else
        format.html { render :edit }
        format.json { render json: @custom_date.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /custom_dates/1
  # DELETE /custom_dates/1.json
  def destroy
    @custom_date.destroy
    respond_to do |format|
      format.html { redirect_to custom_dates_url, notice: 'Custom date was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_custom_date
      @custom_date = CustomDate.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def custom_date_params
      params.require(:custom_date).permit(:bday, :dday)
    end
end
