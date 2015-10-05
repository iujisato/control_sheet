module EmployeesHelper
	def total(employees)
      employees.map do |employee|
        employee
         .cashes
         .where(["created_at LIKE ?", "%#{Date.today.to_s(:db)}%"])
         .sum(:value)
      end.reduce(:+)
	end
end
