!constant SPACED_NAME "Web UI"
!constant CAMEL_NAME "WebUI"

systemContext webUi "SystemContext-${CAMEL_NAME}" {
    description "System Context of ${SPACED_NAME}"
    include *
    autolayout lr
}