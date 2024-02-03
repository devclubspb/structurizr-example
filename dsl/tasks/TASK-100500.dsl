dynamic parkingService.app "TASK-100500" "TASK-100500" {
    parkingService.app.controller -> parkingService.app.service "Gets cars"
    parkingService.app.service -> parkingService.app.repository "Gets all cars"
    parkingService.app.service -> parkingService.app.companyBranchClient "Get branches from cars by ids"
    parkingService.app.companyBranchClient -> companyBranchService.app.controller
    parkingService.app.service -> parkingService.app.employeeClient "Get employees from cars by ids"
    parkingService.app.employeeClient -> employeeService.app.controller
    parkingService.app.service -> parkingService.app.controller "Gives sorted and limited cars"
    autolayout lr
}