class ImprensaController < ApplicationController
    def index
      #CONFIG DO SERVER ESTA NO PARTIAL _right.html.erb
      #@Servidor = "http://192.168.1.103:3002"
      #@Servidor = "htt//admin.fasterm.com.br"
      
      @DynamicPage = DynamicPage.find(:first, :conditions => ['id = 5 AND published = 1'])
      
      @Conteudo = @DynamicPage.body
      @Imagem = @DynamicPage.image.url
      @Legenda = @DynamicPage.legend
      @Titulo = @DynamicPage.title
      
      @Header = Header.first(:conditions => ['dynamic_page_id = ? AND published = 1', 5], :order => 'id DESC')
    end
end
