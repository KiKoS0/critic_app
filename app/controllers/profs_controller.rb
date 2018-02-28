class ProfsController < ApplicationController

  def show
    @prof = Prof.find_by(:id => params[:prof_id]["0"])
    redirect_to root_path unless @prof!=nil
  end
  def create
    redirect_to root_path
  end
end
