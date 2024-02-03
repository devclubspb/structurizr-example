workspace {

    !identifiers hierarchical

    model {
        biSystem = group "BI System" {
            !include api-gateway/elements.dsl
            !include company-branch-service/elements.dsl
            !include employee-service/elements.dsl
            !include parking-service/elements.dsl
            !include web-ui/elements.dsl

            !include api-gateway/relationships.dsl
            !include company-branch-service/relationships.dsl
            !include employee-service/relationships.dsl
            !include parking-service/relationships.dsl
            !include web-ui/relationships.dsl
        }

        employeeUser = person "Employee"

        employeeUser -> webUi "Uses"
    }

    views {
        !include api-gateway/views.dsl
        !include company-branch-service/views.dsl
        !include employee-service/views.dsl
        !include parking-service/views.dsl
        !include web-ui/views.dsl

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