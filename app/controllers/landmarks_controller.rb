class LandmarksController < ApplicationController

    get '/landmarks' do
        @landmarks = Landmark.all
        erb :'/landmarks/index'
    end

    get '/landmarks/new' do
        
        erb :'/landmarks/new'
    end

    post '/landmarks' do
        @landmark = Landmark.create(:name => params['landmark']['name'], :year_completed => params['landmark']['year_completed'])

        redirect to :'/landmarks/#{@landmark.id}'
    end

    get '/landmarks/:id' do

        erb :'landmarks/show'
    end
end
