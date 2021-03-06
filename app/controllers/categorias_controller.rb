class CategoriasController < ApplicationController  
  #layout "blank"
  def show
    @Section = Section.find(params[:linha_id])
    
    @Categoria = @Section.categories.find(params[:id])
    
    @Produtos = @Categoria.products.find(:all, :conditions => ['published = 1'])
    
    if @Section.id == 8
      @HeaderInterno = "produtos/header_home.png" 
    end
    
    if @Section.id == 9
      @HeaderInterno = "produtos/header_business.png" 
    end
    
    if @Section.id == 10
      @HeaderInterno = "produtos/header_solar.png" 
    end
    
    if @Section.id == 8
      @HeaderInterno = "produtos/header_home.png" 
    end
  end
end
