class RatingsController < ApplicationController
#  before_action :set_rating, only: [:show, :edit, :update, :destroy]

  # GET /ratings
  # GET /ratings.json
  def index
    @ratings = Rating.all
  end

  # GET /ratings/1
  # GET /ratings/1.json
  def show
    @rating = Rating.find(params[:id])
  end

  # GET /ratings/new
  def new
    @rating = Rating.new
  end

  # GET /ratings/1/edit
  def edit
     @rating =Rating.find(params[:id])
  end

  # POST /ratings
  # POST /ratings.json
  def create
    if @rating = Rating.create(rating_params)
      redirect_to root_path
    else
      render :new
    end
  end

  # PATCH/PUT /ratings/1
  # PATCH/PUT /ratings/1.json
  def update
    @rating = Rating.find(params[:id])

    if @rating.update(rating_params)
      redirect_to @rating
    else
      render :edit
    end
  end

  # DELETE /ratings/1
  # DELETE /ratings/1.json
  def destroy
    @rating= Rating.find(params[:id])
    if @rating.destroy
      redirect_to root_path
    else
      redirect_to @rating
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
  #  def set_rating
  #    @rating = Rating.find(params[:id])
  #  end

    # Never trust parameters from the scary internet, only allow the white list through.
    def rating_params
      params.require(:rating).permit(:note, :explanation ,:wine_id)
    end
end
