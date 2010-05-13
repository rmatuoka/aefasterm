class BuscaController < ApplicationController
  def index
    if !params[:s].blank?
      @Termo = params[:s]
      #BUSCA NOTICIAS
      @Noticias = Notice.find(:all) do
        any do
          title.contains? params[:s]
          body.contains? params[:s]
          summary.contains? params[:s]
        end
      end
    
      #BUSCA PRODUTOS
      @Produtos = Product.find(:all) do
        any do
          title.contains? params[:s]
          description.contains? params[:s]
        end
      end
      
      #BUSCA CASES
      @Cases = Case.find(:all) do
        any do
          title.contains? params[:s]
          sumary.contains? params[:s]
          body.contains? params[:s]
        end
      end
      
    end
  end
end
