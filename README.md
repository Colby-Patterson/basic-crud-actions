# README

Items api

get '/items' => items controller#index method => list of items

get '/items/:id' => items controller#show method => one item

post '/items' *need to send item data => items controller#create method => create an item

put '/items/:id' => items controller#update method => updates an item

delete '/items/:id' => items controller#destroy method => deletes an item