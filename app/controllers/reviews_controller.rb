class ReviewsController < ApplicationController
  def new
    @duck = Duck.find(params[:duck_id])
    @review = Review.new
    authorize @review
  end

  def create
    @review = Review.new(review_params)
    @duck = Duck.find(params[:duck_id])
    @review.duck = @duck
    authorize @review
    if @review.save
    redirect_to duck_path(@duck)
    else
      render :new
    end
  end

  def show
    @duck = Duck.find(params[:duck_id])
  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
