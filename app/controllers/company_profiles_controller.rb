class CompanyProfilesController < ApplicationController
  before_action :set_company_profile, only: [:show, :edit, :update, :destroy]

  # GET /company_profiles
  # GET /company_profiles.json
  def index
    @company_profiles = CompanyProfile.all
  end

  # GET /company_profiles/1
  # GET /company_profiles/1.json
  def show
  end

  # GET /company_profiles/new
  def new
    @company_profile = CompanyProfile.new
  end

  # GET /company_profiles/1/edit
  def edit
  end

  # POST /company_profiles
  # POST /company_profiles.json
  def create
    @company_profile = CompanyProfile.new(company_profile_params)

    respond_to do |format|
      if @company_profile.save
        format.html { redirect_to @company_profile, notice: 'Company profile was successfully created.' }
        format.json { render :show, status: :created, location: @company_profile }
      else
        format.html { render :new }
        format.json { render json: @company_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /company_profiles/1
  # PATCH/PUT /company_profiles/1.json
  def update
    respond_to do |format|
      if @company_profile.update(company_profile_params)
        format.html { redirect_to @company_profile, notice: 'Company profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @company_profile }
      else
        format.html { render :edit }
        format.json { render json: @company_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /company_profiles/1
  # DELETE /company_profiles/1.json
  def destroy
    @company_profile.destroy
    respond_to do |format|
      format.html { redirect_to company_profiles_url, notice: 'Company profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_company_profile
      @company_profile = CompanyProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def company_profile_params
      params.require(:company_profile).permit(:first_name, :last_name, :phone, :company_name, :logo, :description, :street, :suburb, :postcode, :country, :latitude, :longitude, :company_culture, :company_type, :user_id)
    end
end
