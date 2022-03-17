class LeasesController < ApplicationController
    def create
        l = Lease.create!(l_params)
        render json: l, status: :created
    end

    def destroy
        l = Lease.find(params[:id])
        l.destroy
        head :no_content
    end

    private

    def l_params
        params.permit(:rent, :tenant, :apartment)
    end
end
