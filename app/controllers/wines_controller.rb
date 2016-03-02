class WinesController < ApplicationController
#    before_action :set_wine, only: [:show, :edit, :update, :destroy]

  # GET /wines
  # GET /wines.json
  def index
    @wines = Wine.all
  end

  # GET /wines/1
  # GET /wines/1.json
  def show
    @wine = Wine.find(params[:id])
  end

  # GET /wines/new
  def new
    @wine = Wine.new
  end

  # GET /wines/1/edit
  def edit
    @wine = Wine.find(params[:id])
  end

  # POST /wines
  # POST /wines.json
  def create
    @wine = Wine.new(wine_params)

    if @wine = Wine.create(wine_params)
        redirect_to root_path
      else
        render :new
      end
    end


  # PATCH/PUT /wines/1
  # PATCH/PUT /wines/1.json
  def update
    @wine = Wine.find(params[:id])

    if @wine.update(wine_params)
      redirect_to @wine
    else
      render :edit

    end
  end

  # DELETE /wines/1
  # DELETE /wines/1.json
  def destroy
    wine=Wine.find(params[:id])
    if @wine.destroy
      redirect_to root_path
    else
      redirect_to @wine
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
#  def set_wine
#      @wine = Wine.find(params[:id])
#    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wine_params
      params.require(:wine).permit(
      :name, :description, :origin
      )
    end
end
