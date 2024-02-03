companyBranchService = softwareSystem "Company Branch Service" {
    db = container "Company Branch Database"
    app = container "Company Branch Application" {
        controller = component "CompanyBranchController"
        service = component "CompanyBranchService"
        repository = component "CompanyBranchRepository"

        controller -> service "Uses as service"
        service -> repository "Uses as repository"
        repository -> db "Uses as store"
    }
}