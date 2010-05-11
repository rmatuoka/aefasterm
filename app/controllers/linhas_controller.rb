class LinhasController < ApplicationController
  def show
    @Section = Section.find(params[:id])
    
    @Categorias = @Section.categories.all(:conditions => ['published = 1']) 
  end
end
