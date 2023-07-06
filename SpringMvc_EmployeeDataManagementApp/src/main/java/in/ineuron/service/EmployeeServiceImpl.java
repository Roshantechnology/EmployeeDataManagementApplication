package in.ineuron.service;

import java.util.List;

import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import in.ineuron.DAO.IEmployeeDAO;
import in.ineuron.model.Employee;

@Service
public class EmployeeServiceImpl implements IEmployeeService {

	@Autowired
	private IEmployeeDAO repo;

	@Override
	public List<Employee> getEmployees() {
		return (List<Employee>) repo.findAll();
	}

	@Override
	public void saveEmployee(Employee employee) {
		repo.save(employee);
	}

	@Override
	public Employee getEmployee(Integer employeeId) {
		Optional<Employee> optional = repo.findById(employeeId);
		return optional.get();
	}

	@Override
	public void deleteEmployee(Integer employeeId) {
		repo.deleteById(employeeId);
	}
}
