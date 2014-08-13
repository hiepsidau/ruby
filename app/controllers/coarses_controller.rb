class CoarsesController < ApplicationController
  before_action :set_coarse, only: [:show, :edit, :update, :destroy]

  # GET /coarses
  # GET /coarses.json
  def index
    @coarses = Coarse.all
  end

  # GET /coarses/1
  # GET /coarses/1.json
  def show
  end

  # GET /coarses/new
  def new
    @coarse = Coarse.new
  end

  # GET /coarses/1/edit
  def edit
  end

  # POST /coarses
  # POST /coarses.json
  def create
    @coarse = Coarse.new(coarse_params)

    respond_to do |format|
      if @coarse.save
        format.html { redirect_to @coarse, notice: 'Coarse was successfully created.' }
        format.json { render :show, status: :created, location: @coarse }
      else
        format.html { render :new }
        format.json { render json: @coarse.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /coarses/1
  # PATCH/PUT /coarses/1.json
  def update
    respond_to do |format|
      if @coarse.update(coarse_params)
        format.html { redirect_to @coarse, notice: 'Coarse was successfully updated.' }
        format.json { render :show, status: :ok, location: @coarse }
      else
        format.html { render :edit }
        format.json { render json: @coarse.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /coarses/1
  # DELETE /coarses/1.json
  def destroy
    @coarse.destroy
    respond_to do |format|
      format.html { redirect_to coarses_url, notice: 'Coarse was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coarse
      @coarse = Coarse.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def coarse_params
      params[:coarse]
    end
end
