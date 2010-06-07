class InstalacaoController < ApplicationController
  def index
      #@Servidor = "http://192.168.1.103:3002"
      #@Servidor = "htt//admin.fasterm.com.br"
      
      @DynamicPage = DynamicPage.first(:conditions => ['id = 3 AND published = 1'])
      
      @Conteudo = @DynamicPage.body
      @Imagem = @DynamicPage.image.url
      @Legenda = @DynamicPage.legend
      @Titulo = @DynamicPage.title
      
      @Header = Header.first(:conditions => ['dynamic_page_id = ? AND published = 1', 3], :order => 'id DESC')
    end
end
