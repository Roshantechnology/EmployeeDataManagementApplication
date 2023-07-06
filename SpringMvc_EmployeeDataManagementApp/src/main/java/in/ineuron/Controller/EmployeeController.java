package in.ineuron.Controller;

import java.util.List;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import in.ineuron.model.Employee;
import in.ineuron.service.IEmployeeService;

@Controller
@RequestMapping("/employee")
public class EmployeeController {

	@Autowired
	private IEmployeeService service;

	@GetMapping("/list")
	public String listEmployee(Map<String, Object> model) {
		System.out.println("Implementation class is :: " + service.getClass().getName());
		List<Employee> employees = service.getEmployees();
		employees.forEach(System.out::println);
		model.put("employees", employees);
		return "list-employees";
	}

	@GetMapping("/showForm")
	public String showFormForAdd(Map<String, Object> model) {
		Employee employee = new Employee();
		model.put("employee", employee);
		return "employee-form";
	}

	@PostMapping("/saveEmployee")
	public String saveEmployee(@ModelAttribute("employee") Employee employee) {
		System.out.println(employee);
		service.saveEmployee(employee);
		return "redirect:/employee/list";
	}

	@GetMapping("/showFormForUpdate")
	public String showFormForUpdate(@RequestParam Integer employeeId, Map<String, Object> model) {
		Employee employee = service.getEmployee(employeeId);
		System.out.println(employee);

		model.put("employee", employee);
		return "employee-form";
	}

	@GetMapping("/showFormForDelete")
	public String showFormForDelete(@RequestParam Integer employeeId) {
		service.deleteEmployee(employeeId);
		return "redirect:/employee/list";
	}

}
