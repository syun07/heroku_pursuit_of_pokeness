class PokeUsersController < ApplicationController
	before_action :authorized, except: [:index, :create]

	def index
		@poke_users = PokeUser.all
		render json: @poke_users, status: :ok
	end

	def create
		@poke_user = PokeUser.new(pokemon_id: poke_user_params['pokemon_id'], user_id: poke_user_params['user_id'])
		if @poke_user.save
			render json: @poke_user, status: :created
		else
			render json: @poke_user.errors.full_messages, status: :unprocessable_entity
		end
	end

	private

	def poke_user_params
		params.permit(:pokemon_id, :user_id)
	end
end