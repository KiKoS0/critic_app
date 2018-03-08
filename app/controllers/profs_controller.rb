class ProfsController < ApplicationController

  def show
    if params[:prof_id]!=nil
      param = params[:prof_id]["0"]
    else
      param = params[:id]
    end
    @prof = Prof.find_by(:id => param)
    if @prof!=nil
      @reviews = @prof.reviews.paginate(page: params[:page])
    else
      redirect_to root_path
    end
  end

end
