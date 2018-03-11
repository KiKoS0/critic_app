class ReportsController < ApplicationController
  def create
    @report =  Report.find_by(:review_id => params[:review_id])
    if @report.nil?
      @review = Review.find_by(:id => params[:review_id])
      if @review.nil?
        return
      elsif @review.reports.build.save
      end
    else
      newNumber = @report.number + 1
      @report.update_attribute(:number,newNumber)
    end
  end







  private
  def report_params
    params.require(:report).permit(:review_id )
  end
end
