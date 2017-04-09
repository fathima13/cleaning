class CitycleanersController < ApplicationController
  before_action :set_citycleaner, only: [:show, :edit, :update, :destroy]

  # GET /citycleaners
  # GET /citycleaners.json
  def index
    @citycleaners = Citycleaner.all
  end

  # GET /citycleaners/1
  # GET /citycleaners/1.json
  def show
  end

  # GET /citycleaners/new
  def new
    @citycleaner = Citycleaner.new
    @cleaners=Cleaner.all
    @cities=City.all
  end

  # GET /citycleaners/1/edit
  def edit
    @cleaners=Cleaner.all
    @cities=City.all
  end

  # POST /citycleaners
  # POST /citycleaners.json
  def create
    @citycleaner = Citycleaner.new(citycleaner_params)

    respond_to do |format|
      if @citycleaner.save
        format.html { redirect_to @citycleaner, notice: 'Citycleaner was successfully created.' }
        format.json { render :show, status: :created, location: @citycleaner }
      else
        format.html { render :new }
        format.json { render json: @citycleaner.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /citycleaners/1
  # PATCH/PUT /citycleaners/1.json
  def update
    respond_to do |format|
      if @citycleaner.update(citycleaner_params)
        format.html { redirect_to @citycleaner, notice: 'Citycleaner was successfully updated.' }
        format.json { render :show, status: :ok, location: @citycleaner }
      else
        format.html { render :edit }
        format.json { render json: @citycleaner.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /citycleaners/1
  # DELETE /citycleaners/1.json
  def destroy
    @citycleaner.destroy
    respond_to do |format|
      format.html { redirect_to citycleaners_url, notice: 'Citycleaner was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_citycleaner
      @citycleaner = Citycleaner.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def citycleaner_params
      params.require(:citycleaner).permit(:cleaner_id, :city_id)
    end
end
