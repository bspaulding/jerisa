Jerisa::Application.routes.draw do
  ['our_story', 'registry', 'contact_us', 'guestbook', 'ceremony', 'reception', 'accomodations'].each do |page|
    match "/#{page}" => "pages##{page}"
  end
end
