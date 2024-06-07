resource "azurerm_monitor_diagnostic_setting" "diagnostic" {
    name               = var.name
    target_resource_id = var.target_resource_id

    log_analytics_workspace_id = var.log_analytics_workspace_id

    metric {
        category = "AllMetrics"
        enabled  = true
    }

    log {
        category = "Administrative"
        enabled  = true
    }
}
