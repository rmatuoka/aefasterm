class HomeController < ApplicationController
    def index
      @Servidor =  "http://localhost:3002"
      @Highlights = Highlight.find(:all, :conditions => ['published = 1'])
    end
end
