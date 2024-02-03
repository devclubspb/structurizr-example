parkingService = softwareSystem "Parking Service" {
    db = container "Parking Database"
    app = container "Parking Application" {
        controller = component "ParkingController"
        companyBranchClient = component "CompanyBranchClient"
        employeeClient = component "EmployeeClient"
        service = component "ParkingService"
        repository = component "ParkingRepository"

        controller -> service "Uses as service"
        service -> repository "Uses as repository"
        service -> companyBranchClient "Uses as client"
        service -> employeeClient "Uses as client"
        repository -> db "Uses as store"
    }
}