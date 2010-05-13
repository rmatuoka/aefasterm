class HomeController < ApplicationController
    def index
      @Servidor =  "http://admin.fasterm.com.br"
      @Highlights = Highlight.find(:all, :conditions => ['published = 1'], :order => 'position ASC')
      
      @Case = Case.find(:first, :conditions => ['published = 1'], :order => 'id DESC', :limit => 1)
    end
end
