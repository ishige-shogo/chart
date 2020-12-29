class RugbyWorldCupHostCountriesController < ApplicationController
  before_action :set_rugby_world_cup_host_country, only: [:show, :edit, :update, :destroy]

  # GET /rugby_world_cup_host_countries
  # GET /rugby_world_cup_host_countries.json
  def index
    @rugby_world_cup_host_countries = RugbyWorldCupHostCountry.all
  end

  # GET /rugby_world_cup_host_countries/1
  # GET /rugby_world_cup_host_countries/1.json
  def show
  end

  # GET /rugby_world_cup_host_countries/new
  def new
    @rugby_world_cup_host_country = RugbyWorldCupHostCountry.new
  end

  # GET /rugby_world_cup_host_countries/1/edit
  def edit
  end

  # POST /rugby_world_cup_host_countries
  # POST /rugby_world_cup_host_countries.json
  def create
    @rugby_world_cup_host_country = RugbyWorldCupHostCountry.new(rugby_world_cup_host_country_params)

    respond_to do |format|
      if @rugby_world_cup_host_country.save
        format.html { redirect_to @rugby_world_cup_host_country, notice: 'Rugby world cup host country was successfully created.' }
        format.json { render :show, status: :created, location: @rugby_world_cup_host_country }
      else
        format.html { render :new }
        format.json { render json: @rugby_world_cup_host_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /rugby_world_cup_host_countries/1
  # PATCH/PUT /rugby_world_cup_host_countries/1.json
  def update
    respond_to do |format|
      if @rugby_world_cup_host_country.update(rugby_world_cup_host_country_params)
        format.html { redirect_to @rugby_world_cup_host_country, notice: 'Rugby world cup host country was successfully updated.' }
        format.json { render :show, status: :ok, location: @rugby_world_cup_host_country }
      else
        format.html { render :edit }
        format.json { render json: @rugby_world_cup_host_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /rugby_world_cup_host_countries/1
  # DELETE /rugby_world_cup_host_countries/1.json
  def destroy
    @rugby_world_cup_host_country.destroy
    respond_to do |format|
      format.html { redirect_to rugby_world_cup_host_countries_url, notice: 'Rugby world cup host country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_rugby_world_cup_host_country
      @rugby_world_cup_host_country = RugbyWorldCupHostCountry.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def rugby_world_cup_host_country_params
      params.require(:rugby_world_cup_host_country).permit(:name, :total_attendance, :matches, :stadium_capacity, :held_at)
    end
end
