class PickupsController < ApplicationController
  def index
    render json: { data: Pickup.all }, status: :ok
  end

  def create
    pickup = Pickup.new

    pickup.work_key = params[:work_key]
    pickup.pickup_schedule = params[:pickup_schedule]
    pickup.name = params[:name]
    pickup.phone_number = params[:phone_number]

    if pickup.save
      render json: { data: pickup }, status: :created
    else
      render json: nil, status: :bad_request

    end
  end
end
