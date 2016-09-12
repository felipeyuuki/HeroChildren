class MaternityAssistancesController < ApplicationController
  before_action :set_maternity_assistance, only: [:show, :edit, :update, :destroy]
  before_action :set_mother, only: [:create,:new, :show, :edit, :update, :destroy]

  # GET /maternity_assistances
  # GET /maternity_assistances.json
  def index
    @maternity_assistances = MaternityAssistance.all
  end

  # GET /maternity_assistances/1
  # GET /maternity_assistances/1.json
  def show
  end

  # GET /maternity_assistances/new
  def new
    @maternity_assistance = MaternityAssistance.new
  end

  # GET /maternity_assistances/1/edit
  def edit
  end

  # POST /maternity_assistances
  # POST /maternity_assistances.json
  def create
    @maternity_assistance = MaternityAssistance.new(maternity_assistance_params)

    respond_to do |format|
      if @maternity_assistance.save
        format.html { redirect_to @maternity_assistance, notice: 'Maternity assistance was successfully created.' }
        format.json { render :show, status: :created, location: @maternity_assistance }
      else
        format.html { render :new }
        format.json { render json: @maternity_assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /maternity_assistances/1
  # PATCH/PUT /maternity_assistances/1.json
  def update
    respond_to do |format|
      if @maternity_assistance.update(maternity_assistance_params)
        format.html { redirect_to @maternity_assistance, notice: 'Maternity assistance was successfully updated.' }
        format.json { render :show, status: :ok, location: @maternity_assistance }
      else
        format.html { render :edit }
        format.json { render json: @maternity_assistance.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /maternity_assistances/1
  # DELETE /maternity_assistances/1.json
  def destroy
    @maternity_assistance.destroy
    respond_to do |format|
      format.html { redirect_to maternity_assistances_url, notice: 'Maternity assistance was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_maternity_assistance
      @maternity_assistance = MaternityAssistance.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def maternity_assistance_params
      params.require(:maternity_assistance).permit(:startDate, :endDate, :mother)
    end
    def set_mother

      @mother = Mother.all
      
    end
end
