package in.ineuron.service;

import java.util.List;

import in.ineuron.model.Employee;

public interface IEmployeeService {
	public List<Employee> getEmployees();
	public void saveEmployee(Employee employee);
	public Employee getEmployee(Integer employeeId);
	public void deleteEmployee(Integer employeeId);
}
