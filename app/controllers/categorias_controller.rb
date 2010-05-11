class CategoriasController < ApplicationController  
  layout "blank"
  def show
    @Section = Section.find(params[:linha_id])
    
    @Categoria = @Section.categories.find(params[:id])
    
    @Produtos = @Categoria.products.find(:all, :conditions => ['published = 1'])
  end
end
