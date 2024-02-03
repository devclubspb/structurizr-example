!constant SPACED_NAME "Company Branch Service"
!constant CAMEL_NAME "CompanyBranchService"

systemContext companyBranchService "SystemContext-${CAMEL_NAME}" {
    description "System Context of ${SPACED_NAME}"
    include *
    autolayout lr
}

container companyBranchService "Container-${CAMEL_NAME}" {
    description "Containers of ${SPACED_NAME}"
    include *
    autolayout lr
}

component companyBranchService.app "Component-${CAMEL_NAME}" {
    description "Components of ${SPACED_NAME}"
    include *
    autolayout lr
}