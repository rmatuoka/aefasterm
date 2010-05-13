class CasesController < ApplicationController
    def index
      @Cases = Case.all(:conditions => ['published = 1'])
  end
  
  def show
      @Case = Case.find(params[:id])
      
      #SELECIONA IMAGENS
      @Imagens = @Case.case_images.all
  end
end
