class RequestCatalogsController < ApplicationController
  layout "blank"
  
  def show
    @RequestCatalog = RequestCatalog.find(params[:id])
  end
  
  def new
    @RequestCatalog = RequestCatalog.new
  end

  def create
    @RequestCatalog = RequestCatalog.create(params[:request_catalog])
    
    if @RequestCatalog.save
      redirect_to edit_request_catalog_path(@RequestCatalog)
    else
      render :action => "new"
    end
  end
  
  def edit
        @RequestCatalog = RequestCatalog.find(params[:id])
  end

  def update
      @RequestCatalog = RequestCatalog.find(params[:id])
      @RequestCatalog.attributes = params[:request_catalog]
  
      if @RequestCatalog.save
          redirect_to request_catalog_path(@RequestCatalog)
          
          #ENVIAR EMAIL
      else
          render :action => "edit"
      end
  end
end
