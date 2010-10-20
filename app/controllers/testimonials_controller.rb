class TestimonialsController < ApplicationController
  def new
    @Testimonial = Testimonial.new
  end

  def create
    @Testimonial = Testimonial.create(params[:testimonial])
    @Testimonial.published = 0
    
    if @Testimonial.save
      redirect_to depoimento_path(@Testimonial)
    else
      flash[:msg] = "Erro ao inserir os dados. Verifique os erros."
      render :action => "new"
    end
  end
end
