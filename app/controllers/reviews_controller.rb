class ReviewsController < ApplicationController
  def new
    @review = Review.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@review.cocktail)
    else
      render "new"
    end
  end

  def index
    @reviews = Review.all
  end

  private

  def review_params
    params.require(:review).permit(:content, :cocktail_id)
  end
end
