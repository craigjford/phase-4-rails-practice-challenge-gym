class GymsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    def index            
        render json: Gym.all, include: :clients, status: :ok
    end

    def show  
        gym = find_gym
        render json: gym, include: :clients, status: :ok
    end

    def destroy 
        gym = find_gym
        gym.destroy
        head :no_content, :status => 204 
    end

    def update    
        gym = find_gym
        gym.update!(gym_params)
        render json: gym, status: :accepted
    end

    private

    def find_gym   
        Gym.find(params[:id])
    end

    def gym_params    
        params.permit(:name, :address)
    end

    def render_not_found   
        render json: { error: "Gym not found"}, status: :not_found
    end

    def render_unprocessable_entity_response(invalid)  
        render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end
