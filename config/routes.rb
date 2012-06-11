Jerisa::Application.routes.draw do
  root :to => 'pages#our_story'

  resources :guestbook_entries

  match "/guestbook" => 'guestbook_entries#index'

  ['our_story', 'registry', 'contact_us', 'ceremony', 'reception', 'accomodations'].each do |page|
    match "/#{page}" => "pages##{page}"
  end
end
