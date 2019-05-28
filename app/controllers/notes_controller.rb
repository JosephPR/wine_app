class NotesController < ApplicationController

  def index
    @varietals = Varietal.all
  end

  def new
    @note = Note.new
<<<<<<< HEAD
    @varietals = Varietal.all
=======
    @varietal = Varietal.all
>>>>>>> 9b015e1826893acef885572b1a556e7483ca4964
  end

  def create
    @note = Note.create(notes_params)
<<<<<<< HEAD
      if @note.errors.any?
    @varietals = Varietal.all
      render :new
    else
      redirect_to varietals_path
=======
    if @note.errors.any?
      @varietals = Varietal.all
      render :new
    else
    redirect_to varietals_path
>>>>>>> 9b015e1826893acef885572b1a556e7483ca4964
    end
  end




    private

    def notes_params
      params.require(:note).permit(:sweetness, :acidity, :tanin, :alcohol, :body)
    end
end
