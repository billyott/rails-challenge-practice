class CompaniesController < ApplicationController
    before_action :find_company, only: [:show, :edit, :update, :destroy]

    def index
        @companies = Company.all
    end

    def show
        @employee = Employee.new
        @employees = @company.employees
    end

    def edit
    end

    def update
        @company.update(company_params)
        redirect_to company_path(@company)
    end

    def new
        @company = Company.new
    end

    def create
        @company = Company.new(company_params)
        @company.save
        redirect_to company_path(@company)
    end

    private

    def find_company
        @company = Company.all.find(params[:id])
    end

    def company_params
        params.require(:company).permit(:name)
    end

end