class ProdutosController < ApplicationController
  def show
    @Section = Section.find(params[:linha_id])
    
    @Categoria = @Section.categories.find(params[:categoria_id])
    
    @Produto = @Categoria.products.find(params[:id])
    
    @Imagens = @Produto.product_images.find(:all)
    
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
