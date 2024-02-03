parkingService = softwareSystem "Parking Service" {
    db = container "Parking Database"
    app = container "Parking Application" {
        controller = component "ParkingController"
        service = component "ParkingService"
        repository = component "ParkingRepository"

        controller -> service "Uses as service"
        service -> repository "Uses as repository"
        repository -> db "Uses as store"
    }
}