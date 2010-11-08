ActionController::Routing::Routes.draw do |map|

  map.resources :home, :singular => :home_item
  map.resources :newsletters
  map.resources :schedule_visits
  map.resources :request_catalogs
  map.resources :empresa, :singular => :empresa_item
  map.resources :servicos
  map.resources :visitas
  map.resources :sitecontacts
  map.resources :sustentabilidade, :singular=>:sustentabilidade_item
  map.resources :busca, :singular=>:busca_item
  map.resources :imprensa, :singular=>:imprensa_item
  map.resources :parceiros
  map.resources :sessions
  map.resources :instalacao, :singular=>:instalacao_item
  map.resources :depoimentos
  map.resources :testimonials
  map.resources :hoteleiros
  
  
  map.resources :eventos do |eventos|
      eventos.resources :galerias, :has_many => :event_gallery_images
  end

  map.resources :noticias do |noticias|
      noticias.resources :imagens
  end
  
  map.resources :cases, :has_many => :imagens, :member => { :categoria => :get } 
  #map.resources :cases do |cases|
  #    cases.resources :imagens
  #end
  
  map.resources :linhas do |linhas|
    linhas.resources :categorias do |categorias|
      categorias.resources :produtos do |produtos|
        produtos.resources :imagens
      end
    end
  end

  map.root :controller => "home"
  
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
