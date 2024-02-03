employeeService = softwareSystem "Employee Service" {
    db = container "Employee Database"
    app = container "Employee Application" {
        controller = component "EmployeeController"
        service = component "EmployeeService"
        repository = component "EmployeeRepository"

        controller -> service "Uses as service"
        service -> repository "Uses as repository"
        repository -> db "Uses as store"
    }
}