class ReviewsController < ApplicationController
  include ApplicationHelper


  def create
    begin
      @prof = Prof.find (params[:review][:prof_id])
      @review = @prof.reviews.build(review_params)
      ipHash = alreadyReviewed
      if  ipHash[:exist]==false
        @review.ip = ipHash[:ip]
        if @review.save
          flash[:success] = "Review Added!"
          redirect_to @prof
        else
          @reviews = @prof.reviews.paginate(page: params[:page])
          render 'profs/show'
        end
      else
        flash[:info] = "You already reviewed!"
        redirect_to @prof
      end
    rescue  RecordNotFound
      render 'profs/show'
    end
  end


  def destroy

  end

  private

    def review_params
      params.require(:review).permit(:content, :email, :name,:like )
    end
end
