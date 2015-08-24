class EmployeesController < ApplicationController
  before_filter :authorize_company
  before_action :set_employee, only: [:show, :edit, :update, :destroy]

  # GET /employees
  # GET /employees.json
  def index
    @employees = current_company.employees
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = current_company.employees.build
  end

  # GET /employees/1/edit
  def edit
    @employee = current_company.employees.find(params[:id])
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = current_company.employees.build(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    @employee = current_company.employees.find(params[:id])
    respond_to do |format|
      if @employee.update(employee_params)
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee = current_company.employees.find(params[:id])
      @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:name, :telephone, :cellphone)
    end

    def authorize_company
    unless current_company
      redirect_to root_path, alert: "You need to login to continue."
    end
  end
end
