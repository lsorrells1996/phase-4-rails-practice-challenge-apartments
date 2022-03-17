class ApartmentsController < ApplicationController
    def create
        a = Apartment.create!(a_params)
        render json: a, status: :created
    end

    def index
        render json: Apartment.all, status: :ok
    end

    def show
        a = find_a
        render json: a, status: :ok
    end

    def update
        a = find_a
        a.update!(a_params)
        render json: a, status: :ok
    end

    def destroy
        a = find_a
        a.destroy
        head :no_content
    end

    private

    def a_params
        params.permit(:number)
    end

    def find_a
        Apartment.find(params[:id])
    end
end
