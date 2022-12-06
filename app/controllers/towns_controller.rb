class TownsController < ApplicationController
   #returns all towns and their playgrounds
    get "/towns" do
        Town.all.to_json(include: [:playgrounds])
    end
    

    #returns a specific town with its playgrounds- the show page for a town
    # get "/towns/:id" do
    #     town=Town.find_by_id(params["id"])
    #     town.to_json(include: [:playgrounds])
    # end
  
    post "/towns" do
        town = Town.create(params)
        town.to_json
    end

 end
 