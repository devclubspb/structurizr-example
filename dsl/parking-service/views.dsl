!constant SPACED_NAME "Parking Service"
!constant CAMEL_NAME "ParkingService"

systemContext parkingService "SystemContext-${CAMEL_NAME}" {
    description "System Context of ${SPACED_NAME}"
    include *
    autolayout lr
}

container parkingService "Container-${CAMEL_NAME}" {
    description "Containers of ${SPACED_NAME}"
    include *
    autolayout lr
}

component parkingService.app "Component-${CAMEL_NAME}" {
    description "Components of ${SPACED_NAME}"
    include *
    autolayout lr
}