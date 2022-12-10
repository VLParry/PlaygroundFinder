class PlaygroundsController < ApplicationController
    post "/playgrounds" do
        # binding.pry
        town = Town.find(params["town_id"])
        playground = town.playgrounds.create(
            name: params[:name],
            address: params[:address],
        )
        playground.to_json
    end

    patch "/playgrounds/:id" do
        playground = Playground.find(params[:id])
        playground.update(params)
        playground.to_json
    end


    delete "/playgrounds/:id" do
        playground = Playground.find(params[:id])
        playground.destroy
    end


end
 