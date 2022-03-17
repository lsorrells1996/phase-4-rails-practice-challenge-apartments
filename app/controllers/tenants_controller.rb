class TenantsController < ApplicationController
    def create
        t = Tenant.create!(t_params)
        render json: t, status: :created
    end

    def index
        render json: Tenant.all, status: :ok
    end

    def show
        t = find_t
        render json: t, status: :ok
    end

    def update
        t = find_t
        t.update!(t_params)
        render json: t, status: :ok
    end

    def destroy
        t = find_t
        t.destroy
        head :no_content
    end

    private

    def t_params
        params.permit(:name, :age)
    end

    def find_t
        Tenant.find(params[:id])
    end
end
