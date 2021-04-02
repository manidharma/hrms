class EmployiesController < ApplicationController
  before_action :set_employie, only: %i[ show edit update destroy ]

  # GET /employies or /employies.json
  def index
    @employies = Employie.all
  end

  # GET /employies/1 or /employies/1.json
  def show
  end

  # GET /employies/new
  def new
    @employie = Employie.new
  end

  # GET /employies/1/edit
  def edit
  end

  # POST /employies or /employies.json
  def create
    @employie = Employie.new(employie_params)

    respond_to do |format|
      if @employie.save
        format.html { redirect_to @employie, notice: "Employie was successfully created." }
        format.json { render :show, status: :created, location: @employie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @employie.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employies/1 or /employies/1.json
  def update
    respond_to do |format|
      if @employie.update(employie_params)
        format.html { redirect_to @employie, notice: "Employie was successfully updated." }
        format.json { render :show, status: :ok, location: @employie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @employie.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employies/1 or /employies/1.json
  def destroy
    @employie.destroy
    respond_to do |format|
      format.html { redirect_to employies_url, notice: "Employie was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employie
      @employie = Employie.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def employie_params
      params.require(:employie).permit(:name, :phone_num, :email, :date_of_birth, :address, :address1, :city, :pincode, :image, :certificate, :proof)
    end
end
