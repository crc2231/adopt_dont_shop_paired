class ReviewsController < ApplicationController

  def new
    @shelter = Shelter.find(params[:id])
  end

  def show
    @review = Review.find(params[:id])
  end

  def create
    @shelter = Shelter.find(params[:id])
    @shelter.reviews.new(review_params)
    if @shelter.save
      redirect_to "/shelters/#{@shelter.id}"
    else
      flash.now[:new_alert] = "Title, rating, and content required to continue!"
      render :new
    end
  end

  def review_params
    params.permit(:title, :rating, :content, :image)
  end

  def edit
    @review = Review.find(params[:id])
    @shelter = @review.shelter
  end

  def update
    @review = Review.find(params[:id])
    @shelter = @review.shelter
    @review.update({title: params[:title], rating: params[:rating], content: params[:content], image: params[:image]})
    if @review.save
      redirect_to "/shelters/#{@shelter.id}"
    else
      flash.now[:update_alert] = "Title, rating, and content required to continue!"
      render :edit
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @shelter = @review.shelter
    @review.destroy
    redirect_to "/shelters/#{@shelter.id}"
  end
end
