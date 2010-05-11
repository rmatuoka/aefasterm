class ScheduleVisitsController < ApplicationController
  layout "blank"
  
  def show
    @ScheduleVisit = ScheduleVisit.find(params[:id])
  end
  
  def new
    @ScheduleVisit = ScheduleVisit.new
  end

  def create
    @ScheduleVisit = ScheduleVisit.create(params[:schedule_visit])
    
    if @ScheduleVisit.save
      redirect_to edit_schedule_visit_path(@ScheduleVisit)
    else
      render :action => "new"
    end
  end
  
  def edit
        @ScheduleVisit = ScheduleVisit.find(params[:id])
  end

  def update
      @ScheduleVisit = ScheduleVisit.find(params[:id])
      @ScheduleVisit.attributes = params[:schedule_visit]
  
      if @ScheduleVisit.save
          redirect_to schedule_visit_path(@ScheduleVisit)
          
          #ENVIAR EMAIL
      else
          render :action => "edit"
      end
  end
end
