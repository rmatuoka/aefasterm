class VisitasController < ApplicationController  
  def show
    @Visita = ScheduleVisit.find(params[:id])
  end
  
  def new
    @Visita = ScheduleVisit.new
  end

  def create
    @Visita = ScheduleVisit.create(params[:visita])
    
    if @Visita.save
      redirect_to edit_visita_path(@Visita)
    else
      render :action => "new"
    end
  end
  
  def edit
        @Visita = ScheduleVisit.find(params[:id])
  end

  def update
      @Visita = ScheduleVisit.find(params[:id])
      @Visita.attributes = params[:visita]
  
      if @Visita.save
          redirect_to visita_path(@Visita)
          
          #ENVIAR EMAIL
      else
          render :action => "edit"
      end
  end
end
