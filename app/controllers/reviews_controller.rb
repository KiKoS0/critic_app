class ReviewsController < ApplicationController


  def create
    @prof = Prof.find (params[:review][:prof_id])
    @review = @prof.reviews.build(review_params)
    if @review.save
      flash[:success] = "Review Added!"
      redirect_to @prof
    else
      @reviews = @prof.reviews.paginate(page: 1)
      render 'profs/show'
    end
  end


  def destroy

  end

  private

    def review_params
      params.require(:review).permit(:content, :email, :name)
    end
end
