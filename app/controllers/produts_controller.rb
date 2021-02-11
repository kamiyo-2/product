class ProdutsController < ApplicationController
  before_action :set_produt, only: %i[ show edit update destroy ]

  # GET /produts or /produts.json
  def index
    @produts = Produt.all
  end

  # GET /produts/1 or /produts/1.json
  def show
  end

  # GET /produts/new
  def new
    @produt = Produt.new
  end

  # GET /produts/1/edit
  def edit
  end

  # POST /produts or /produts.json
  def create
    @produt = Produt.new(produt_params)

    respond_to do |format|
      if @produt.save
        format.html { redirect_to @produt, notice: "Produt was successfully created." }
        format.json { render :show, status: :created, location: @produt }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @produt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /produts/1 or /produts/1.json
  def update
    respond_to do |format|
      if @produt.update(produt_params)
        format.html { redirect_to @produt, notice: "Produt was successfully updated." }
        format.json { render :show, status: :ok, location: @produt }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @produt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /produts/1 or /produts/1.json
  def destroy
    @produt.destroy
    respond_to do |format|
      format.html { redirect_to produts_url, notice: "Produt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_produt
      @produt = Produt.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def produt_params
      params.require(:produt).permit(:name, :price, :vendor)
    end
end
