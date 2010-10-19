class DepoimentosController < ApplicationController
  def index
    @Depoimentos = Testimonial.all(:conditions => ['published = 1'])
  end
end
