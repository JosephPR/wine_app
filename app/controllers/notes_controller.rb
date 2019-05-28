class NotesController < ApplicationController

  def index
    @varietals = Varietal.all
  end

  def new
    @note = Note.new
    @varietals = Varietal.all
  end

  def create
    @note = Note.create(notes_params)
      if @note.errors.any?
    @varietals = Varietal.all
      render :new
    else
      redirect_to varietals_path
    end
  end




    private

    def notes_params
      params.require(:note).permit(:sweetness, :acidity, :tanin, :alcohol, :body)
    end
end
