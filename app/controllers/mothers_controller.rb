class MothersController < ApplicationController
  before_action :set_mother, only: [:show, :edit, :update, :destroy]
  before_action :set_neighborhood, only: [:new, :create, :show, :edit, :update, :destroy]

  # GET /mothers
  # GET /mothers.json
  def index
    @mothers = Mother.all
  end

  # GET /mothers/1
  # GET /mothers/1.json
  def show
  end

  # GET /mothers/new
  def new
    @mother = Mother.new
  end

  # GET /mothers/1/edit
  def edit
  end

  # POST /mothers
  # POST /mothers.json
  def create
    @mother = Mother.new(mother_params)

    respond_to do |format|
      if @mother.save
        format.html { redirect_to @mother, notice: 'Mãe salva com sucesso' }
        format.json { render :show, status: :created, location: @mother }

      else
        format.html { render :new }
        format.json { render json: @mother.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mothers/1
  # PATCH/PUT /mothers/1.json
  def update
    respond_to do |format|
      if @mother.update(mother_params)
        format.html { redirect_to @mother, notice: 'Mãe atualizada com sucesso' }
        format.json { render :show, status: :ok, location: @mother }
      else
        format.html { render :edit }
        format.json { render json: @mother.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mothers/1
  # DELETE /mothers/1.json
  def destroy
    @mother.destroy
    respond_to do |format|
      format.html { redirect_to mothers_url, notice: 'Mãe apagada com sucesso' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mother
      @mother = Mother.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mother_params
      params.require(:mother).permit(:nameMother, :occupationMother, :maternityLeaveMother, :addressMother, :neighborhood_id, :telephoneMother, :salaryMother, :salaryFamilyMother, :familyPurseMother, :amountPeopleFamilyMother)
    end
    def set_neighborhood

      @neighborhood = Neighborhood.all

    end
end
