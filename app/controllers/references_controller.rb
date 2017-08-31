class ReferencesController < ApplicationController
  def new
    @reference = Reference.new
  end

  def index
    @references = Reference.all
  end

  def show
    @reference = Reference.find(params[:id])
  end

  def create
    @reference = Reference.new(reference_params)
    if @reference.save
      redirect_to references_path
    else
      
    end
  end

  def edit
    @reference = Reference.find(params[:id])
  end

  def update
    @reference = Reference.find(params[:id])
    if @reference.update(reference_params)
      redirect_to references_path
    else
      render :edit
    end
  end

  private
  def reference_params
    params.require(:reference).permit(:name)
  end
end
