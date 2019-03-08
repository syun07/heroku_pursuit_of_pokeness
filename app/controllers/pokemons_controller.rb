class PokemonsController < ApplicationController
	before_action :authorized, except: [:index, :create]

  def index
		@pokemons = Pokemon.all
		render json: @pokemons, status: :ok
	end

	def create
		@pokemon = Pokemon.new(pokemon_params)
		if @pokemon.save
			render json: @pokemon, status: :created
		else
			render json: @pokemon.errors.full_messages, status: :unprocessable_entity
		end
	end

	private

	def pokemon_params
		params.require(:pokemon).permit(:name, :type, :hp, :region, :front, :back)
	end
end
