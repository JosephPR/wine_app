class VarietalsController < ApplicationController

  def index
    if params[:search_term]
      @varietals = Varietal.where("name LIKE ?", "%#{params[:search_term]}%")
    else
    @varietals = Varietal.all
    end
  end

  def show
    @varietal = Varietal.find(params[:id])
  end

  def new
    @varietal   = Varietal.new
    @categories = Category.all
  end

  def create
    @varietal = Varietal.create(varietal_params)
    if @varietal.errors.any?
      @categories = Category.all
      render :new
    else
    redirect_to varietals_path
    end
  end

  private

    def varietal_params
      params.require(:varietal).permit(:name, :description, :category_id)
    end
end
