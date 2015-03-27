class Admin::ContributionLevelsController < ApplicationController
  before_action :set_admin_contribution_level, only: [:show, :edit, :update, :destroy]
  before_filter :require_login

  # GET /admin/contribution_levels
  # GET /admin/contribution_levels.json
  def index
    @admin_contribution_levels = Admin::ContributionLevel.all
  end

  # GET /admin/contribution_levels/1
  # GET /admin/contribution_levels/1.json
  def show
  end

  # GET /admin/contribution_levels/new
  def new
    @admin_contribution_levels = Admin::ContributionLevel.all
    @admin_contribution_level = Admin::ContributionLevel.new
  end

  # GET /admin/contribution_levels/1/edit
  def edit
    @admin_contribution_levels = Admin::ContributionLevel.all
  end

  # POST /admin/contribution_levels
  # POST /admin/contribution_levels.json
  def create
    @admin_contribution_level = Admin::ContributionLevel.new(admin_contribution_level_params)

    respond_to do |format|
      if @admin_contribution_level.save
        format.html { redirect_to admin_contribution_levels_url, notice: 'Contribution level was successfully created.' }
        format.json { render :index, status: :created, location: admin_contribution_levels_url }
      else
        format.html { render :new }
        format.json { render json: @admin_contribution_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/contribution_levels/1
  # PATCH/PUT /admin/contribution_levels/1.json
  def update
    respond_to do |format|
      if @admin_contribution_level.update(admin_contribution_level_params)
        format.html { redirect_to @admin_contribution_level, notice: 'Contribution level was successfully updated.' }
        format.json { render :show, status: :ok, location: @admin_contribution_level }
      else
        format.html { render :edit }
        format.json { render json: @admin_contribution_level.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/contribution_levels/1
  # DELETE /admin/contribution_levels/1.json
  def destroy
    @admin_contribution_level.destroy
    respond_to do |format|
      format.html { redirect_to admin_contribution_levels_url, notice: 'Contribution level was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_contribution_level
      @admin_contribution_level = Admin::ContributionLevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_contribution_level_params
      params.require(:admin_contribution_level).permit(:name, :rank)
    end
end
