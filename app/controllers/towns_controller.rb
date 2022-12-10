class TownsController < ApplicationController
   #returns all towns and their playgrounds nested
    get "/towns" do
        Town.all.to_json(include: [:playgrounds])
    end
    
    post "/towns" do
        town = Town.create(params)
        town.to_json
    end

 end
 