package in.ineuron.DAO;

import org.springframework.data.repository.CrudRepository;

import in.ineuron.model.Employee;

public interface IEmployeeDAO extends CrudRepository<Employee, Integer> {

}
