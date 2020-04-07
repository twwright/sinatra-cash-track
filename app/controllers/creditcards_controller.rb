class CreditcardsController < ApplicationController
  get '/creditcards' do
    erb :'/creditcards/show'
  end

  get '/creditcards/new' do
    erb :'/creditcards/new'
  end

  post '/creditcards' do
    current_user.creditcards << Creditcard.create(params[:creditcard])
    redirect '/creditcards'
  end

  patch '/creditcards/:id' do
    creditcard = Creditcard.find(params[:id])
    creditcard.update(params[:creditcard])
    redirect '/creditcards'
  end 
end
