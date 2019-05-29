class RecommendationsController < ApplicationController

  def index
    @recommendations = Recommendation.all
    # @varietals = Varietal.all
    # @varietal = Varietal.find(params[:id])
  end

  def show
      # @varietals = Varietal.all
    # @varietal = Varietal.find(params[:id])
  #   @recommendation = Recommendation.select{|recommendation|  recommendation.varietal_id == @varietal.id }
   end


  def new
  end

  def create
  end

  def edit
  end

  def update
  end


end
