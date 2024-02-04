!constant ROOT_PATH ""
// Or by url: https://raw.githubusercontent.com/devclubspb/structurizr-example/master/dsl

workspace {

    !identifiers hierarchical

    model {
        biSystem = group "BI System" {
            !include "${ROOT_PATH}/api-gateway/elements.dsl"
            !include "${ROOT_PATH}/company-branch-service/elements.dsl"
            !include "${ROOT_PATH}/employee-service/elements.dsl"
            !include "${ROOT_PATH}/parking-service/elements.dsl"
            !include "${ROOT_PATH}/web-ui/elements.dsl"

            !include "${ROOT_PATH}/api-gateway/relationships.dsl"
            !include "${ROOT_PATH}/company-branch-service/relationships.dsl"
            !include "${ROOT_PATH}/employee-service/relationships.dsl"
            !include "${ROOT_PATH}/parking-service/relationships.dsl"
            !include "${ROOT_PATH}/web-ui/relationships.dsl"
        }

        employeeUser = person "Employee"

        employeeUser -> webUi "Uses"
    }

    views {
        !include "${ROOT_PATH}/api-gateway/views.dsl"
        !include "${ROOT_PATH}/company-branch-service/views.dsl"
        !include "${ROOT_PATH}/employee-service/views.dsl"
        !include "${ROOT_PATH}/parking-service/views.dsl"
        !include "${ROOT_PATH}/web-ui/views.dsl"

        !include "${ROOT_PATH}/tasks"

        systemLandscape "SystemLandscape" {
            include *
            autolayout lr
        }

        // https://docs.structurizr.com/dsl/language#terminology
        terminology {
            person "User"
            softwareSystem "Service"
        }

        // https://docs.structurizr.com/dsl/language#branding
        branding {
            font Roboto
            logo https://raw.githubusercontent.com/devclubspb/.github/main/images/logo-transparent.png
        }
    }
}