class HomeController < ApplicationController
    def index
      @Noticias = Notice.all
    end
end
