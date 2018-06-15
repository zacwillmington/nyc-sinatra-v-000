class FiguresController < ApplicationController

    get '/figures' do
        binding.pry
        @figures = Figure.all
        erb :'figures/index'
    end

    get '/figures/new' do
        @titles = Title.all
        erb :'figures/new'
    end

    post '/figures/new' do
        binding.pry
        
        erb :'figures/show'
    end

end
