class ProfsController < ApplicationController

  def show
    if params[:prof_id]!=nil
      param = params[:prof_id]["0"]
    else
      param = params[:id]
    end
    @prof = Prof.find_by(:id => param)
    redirect_to root_path unless @prof!=nil
  end

end
