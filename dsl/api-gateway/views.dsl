!constant SPACED_NAME "API Gateway"
!constant CAMEL_NAME "ApiGateway"

systemContext apiGateway "SystemContext-${CAMEL_NAME}" {
    description "System Context of ${SPACED_NAME}"
    include *
    autolayout lr
}