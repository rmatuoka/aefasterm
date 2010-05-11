class NoticiasController < ApplicationController
  layout "application", :except => [:image]
  
  def index
      @Noticias = Notice.all(:conditions => ['published = 1'])
  end
  
  def show
      @Noticia = Notice.find(params[:id])
      
      #SELECIONA IMAGENS
      @Imagens = @Noticia.notice_images.all
  end

end
