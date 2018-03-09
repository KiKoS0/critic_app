class ProfsController < ApplicationController
include ApplicationHelper
  def show
    if params[:prof_id]!=nil
      param = params[:prof_id]["0"]
    elsif params[:id]!=nil
      param = params[:id]
    else
      param = params[:review][:prof_id]
    end
    @prof = Prof.find_by(:id => param)
    if @prof!=nil
      @reviews = @prof.reviews.paginate(page: params[:page])
      @review = @prof.reviews.build
    else
      redirect_to root_path
    end
  end

end
