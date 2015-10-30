class PokemonController < ApplicationController
	
	def capture
		pokemon_id = params[:id]
		@pokemon = Pokemon.find(pokemon_id)
		@pokemon.trainer_id = current_trainer.id
		@pokemon.save
		redirect_to root_path
	end

	def damage
		pokemon_id = params[:id]
		@pokemon = Pokemon.find(pokemon_id)
		if @pokemon.health <= 0
			@pokemon.delete
		else
			@pokemon.health = @pokemon.health - 10
		end
		@pokemon.save
		redirect_to :back
	end

	def new
		@pokemon = Pokemon.new
	end

	def create
		@pokemon = Pokemon.create pokemon_params
		@pokemon.health = 100
		@pokemon.level = 1
		@pokemon.trainer_id = current_trainer.id
		if @pokemon.save
			redirect_to trainer_path(current_trainer)
		else
			flash[:error] = @pokemon.errors.full_messages.to_sentence
			redirect_to pokemons_new_path
		end
	end

	def pokemon_params
		params.require(:pokemon).permit(:name)
	end

end
