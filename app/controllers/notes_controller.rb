class NotesController < ApplicationController

  def index
    @varietals = Varietal.all
  end

  def show
    
  end
end
