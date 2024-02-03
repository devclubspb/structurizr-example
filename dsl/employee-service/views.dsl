!constant SPACED_NAME "Employee Service"
!constant CAMEL_NAME "EmployeeService"

systemContext employeeService "SystemContext-${CAMEL_NAME}" {
    description "System Context of ${SPACED_NAME}"
    include *
    autolayout lr
}

container employeeService "Container-${CAMEL_NAME}" {
    description "Containers of ${SPACED_NAME}"
    include *
    autolayout lr
}

component employeeService.app "Component-${CAMEL_NAME}" {
    description "Components of ${SPACED_NAME}"
    include *
    autolayout lr
}