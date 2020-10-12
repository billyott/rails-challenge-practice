class EmployeesController < ApplicationController
    before_action :find_employee, only: [:show, :edit, :update, :destroy]

    def index
        @employees = Employee.all
    end

    def show
    end

    def edit
    end

    def update
        @employee.update(employee_params)
        redirect_to company_path(@employee.company)
    end

    def new
        @employee = Employee.new
    end

    def create
        @employee = Employee.new(employee_params)
        @employee.save
        redirect_to company_path(@employee.company)
    end

    def destroy
        @employee.destroy
        redirect_to companies_path
    end

    private

    def find_employee
        @employee = Employee.all.find(params[:id])
    end

    def employee_params
        params.require(:employee).permit(:name, :title, :company_id)
    end

end