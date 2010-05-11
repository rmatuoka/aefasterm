class GaleriasController < ApplicationController
    layout "application", :except => [:image]
    
    def show
      @Galeria = EventGallery.find(params[:id])
      
      #SELECIONA IMAGENS
      @Imagens = @Galeria.event_gallery_images.all
    end
end
