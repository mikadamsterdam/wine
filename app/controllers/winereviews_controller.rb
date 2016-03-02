class WinereviewsController < ApplicationController
#  before_action :set_rating, only: [:show, :edit, :update, :destroy]

  # GET /ratings
  # GET /ratings.json
  def index
    @ratings = Winereview.all
  end

  # GET /ratings/1
  # GET /ratings/1.json
  def show
    @winereview = Winereview.find(params[:id])
  end

  # GET /ratings/new
  def new
    @winereview = Winereview.new
  end
  # GET /ratings/1/edit
  def edit
     @winereview =Winereview.find(params[:id])
  end

  # POST /ratings
  # POST /ratings.json
  def create
    if @winereview = Winereview.create(rating_params)
      redirect_to root_path
    else
      render :new
    end
  end

  # PATCH/PUT /ratings/1
  # PATCH/PUT /ratings/1.json
  def update
    @winereview = Winereview.find(params[:id])

    if @winereview.update(rating_params)
      redirect_to @winereview
    else
      render :edit
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    @winereview= Rating.find(params[:id])
    if @winereview.destroy
      redirect_to root_path
    else
      redirect_to @winereview
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  #  def set_rating
  #    @winereview = Rating.find(params[:id])
  #  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:winereview).permit(:note, :explanation ,:wine_id)
    end
end
