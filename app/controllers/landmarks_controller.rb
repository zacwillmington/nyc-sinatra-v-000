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
        binding.pry
        redirect to :"landmarks/#{@landmark.id}"
    end

    get '/landmarks/:id/edit' do
        @landmark = Landmark.find(params[:id])
        erb :'/landmarks/edit'
    end

    post '/landmarks/:id' do
        @landmark = Landmark.find(params[:id])
        binding.pry

        if params['landmark']['name'] != ""
            @landmark.name = params['landmark']['name']
        end
        redirect to :"landmarks/#{@landmark.id}"
    end

    get '/landmarks/:id' do
        @landmark = Landmark.find(params[:id])
        erb :'landmarks/show'
    end

end
