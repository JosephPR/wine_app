# frozen_string_literal: true

class RecommendationsController < ApplicationController
  require_relative '../../config/api_keys.rb'
  require 'rest-client'
  require 'pry'

  # response = RestClient.get 'https://api.globalwinescore.com/globalwinescores/latest/', headers
  # puts response

  # url for slug https://www.globalwinescore.com/wine-score/#{slug}
  # query for 10 top rated pinot noirs https://private-anon-566bcc3d48-globalwinescore.apiary-proxy.com/globalwinescores/latest/?limit=10&ordering=-score&wine=pinot%20noir
  # response = RestClient.get 'https://api.globalwinescore.com/globalwinescores/latest/?color=white&limit=10&ordering=-score', headers
  # puts response

  # {
  #     "wine": "Craggy Range, Te Muna Road Vineyard Pinot Noir, Martinborough",
  #     "wine_id": 47036,
  #     "wine_slug": "craggy-range-te-muna-road-vineyard-pinot-noir-martinborough",
  #     "appellation": "Martinborough",
  #     "appellation_slug": "martinborough",
  #     "color": "Red",
  #     "wine_type": "",
  #     "regions": [
  #       "New Zealand"
  #     ],
  #     "country": "New Zealand",
  #     "classification": null,
  #     "vintage": "2012",
  #     "date": "2015-09-30",
  #     "is_primeurs": false,
  #     "score": 91.85,
  #     "confidence_index": "B+",
  #     "journalist_count": 4,
  #     "lwin": null,
  #     "lwin_11": null
  #   },

#passed in params
#<ActionController::Parameters {"utf8"=>"✓", "authenticity_token"=>"4+xQk3eDrIVhv9c3zya+09xkhuj+lh1GrweSBg4WKRwNnrQrDUvIMNbxWMxV1io3jXhHPRUhDUl
# joIvUchYkUg==", "recommendation"=>{"varietal_id"=>"Cabernet Sauvignon"}, "commit"=>"Get Recommendations", "controller"=>"recommendations", "ac
# tion"=>"create"} permitted: false>
  def api
    @varietal = Varietal.find(params[:recommendation][:varietal_id])
    query = @varietal.name
    headers = {
      accept: 'application/json',
      authorization: ['Token', $gws_api_key].join(" ")
    }
    data = RestClient.get "https://api.globalwinescore.com/globalwinescores/latest/?limit=10&ordering=-score&wine=#{query}", headers
    response = JSON.parse data
    arr = []
    #byebug
    response["results"].each do |wine|
      #byebug
        add = {}
        add[:varietal_id] = @varietal.id
        add[:name] = wine["wine"]
        add[:year] = wine["vintage"]
        add[:region] = [wine["country"], wine["regions"].join(", ")].join(", ")
        add[:score] = wine["score"]
        add[:url] = ["https://www.globalwinescore.com/wine-score/", wine["wine_slug"], "/", wine["vintage"]].join("")
        arr << add
    end
    arr
    arr.each do |params|
      Recommendation.create(params).valid?
    end
    redirect_to recommendations_path
    #redirect_to varietal_path(@varietal.id)
  end

  def index
    @recommendations = Recommendation.all
    # @varietals = Varietal.all
    # @varietal = Varietal.find(params[:id])
  end

  # def show
  #     # @varietals = Varietal.all
  #   # @varietal = Varietal.find(params[:id])
  # #   @recommendation = Recommendation.select{|recommendation|  recommendation.varietal_id == @varietal.id }
  # end
  #
  #  # GET /recommendations/new
  def new
    @recommendation = Recommendation.new
    @varietals = Varietal.all
  end

  # GET /recommendations/1/edit
  def edit; end

  # POST /recommendations
  # POST /recommendations.json

  def create
    api
  end

  # PATCH/PUT /recommendations/1
  # PATCH/PUT /recommendations/1.json
  def update; end

  # DELETE /recommendations/1
  # DELETE /recommendations/1.json
  def destroy
    @recommendation.destroy
    respond_to do |format|
      format.html { redirect_to recommendations_url, notice: 'Recommendation was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  # def set_recommendation
  #   @recommendation = Recommendation.find(params[:id])
  # end

  # Never trust parameters from the scary internet, only allow the white list through.
  def allowed_params
    params.require(:recommendation).permit(:varietal_id, :name, :year, :region, :score, :url)
  end
end
