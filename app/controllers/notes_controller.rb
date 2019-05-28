class NotesController < ApplicationController

  def index
    @varietals = Varietal.all
  end

  def new
  end

  def create

  end


    private

    def notes_params
      params.require(:note).permit(:sweetness, :acidity, :tanin, :alcohol, :body)
    end
end
