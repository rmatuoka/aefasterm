class EventosController < ApplicationController
  def index
    @Eventos = Event.all(:conditions => ['published = 1'])
  end
  
  def show
    @Evento = Event.find(params[:id])
    
    #SELECIONA GALERIAS
    @Galerias = @Evento.event_galleries.all
  end
end
