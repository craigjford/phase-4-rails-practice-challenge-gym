class MembershipsController < ApplicationController
    rescue_from ActiveRecord::RecordInvalid, with: :render_unprocessable_entity_response

    # USED FOR TESTING
    # # not required
    # def index            
    #     memberships = Membership.all
    #     render json: memberships
    # end

    # def destroy    
    #     ms = Membership.find(params[:id])
    #     ms.destroy
    #     head :no_content, :status => 204
    # end
    # # not required

    def create 
        if unique_client_gym    
            render json: { error: "A client can have only one membership with gym"}
        else 
            membership = Membership.create!(membership_params)
            render json: membership, status: :created                
        end
    end

    private

    def membership_params
        params.permit(:gym_id, :client_id, :charge)
    end

    def unique_client_gym 
        found = Membership.find_by(gym_id: params[:gym_id], client_id: params[:client_id])
    end

    def render_unprocessable_entity_response(invalid)
        render json: { errors: invalid.record.errors.full_messages}, status: :unprocessable_entity
    end

end