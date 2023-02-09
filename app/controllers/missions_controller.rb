class MissionsController < ApplicationController

    def create
        mission = Mission.create!(mission_params)
        render json: mission.planet, status: :created
    end

    private

    def find_mission
        @mission = Mission.find(params[:id])
    end

    def mission_params
        params.permit(:name, :scientist_id, :planet_id)
    end
end
