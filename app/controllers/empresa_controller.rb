class EmpresaController < ApplicationController
    def index
      #CONFIG DO SERVER ESTA NO PARTIAL _right.html.erb
      #@Servidor = "http://192.168.1.103:3002"
      #@Servidor = "htt//admin.fasterm.com.br"
      
      @DynamicPage = DynamicPage.first(:conditions => ['id = 1 AND published = 1'])
      
      @Conteudo = @DynamicPage.body
      @Imagem = @DynamicPage.image.url
      @Legenda = @DynamicPage.legend
      @Titulo = @DynamicPage.title
    end
end
