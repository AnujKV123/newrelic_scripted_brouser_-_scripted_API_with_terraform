resource "newrelic_synthetics_script_monitor" "scriptedApiMonitor" {
    for_each = var.scriptedApiData
  status               = each.value.status
  name                 = each.value.name
  type                 = each.value.type
  locations_public     = each.value.locations_public
  period               = each.value.period

  script               = each.value.script

  script_language      = each.value.script_language
  runtime_type         = each.value.runtime_type
  runtime_type_version = each.value.runtime_type_version

  tag {
    key    = each.value.key
    values = each.value.values
  }
}


resource "newrelic_synthetics_script_monitor" "scriptedBrouserMonitor" {
    for_each = var.scriptedBrouserData
  status           = each.value.status
  name             = each.value.name
  type             = each.value.type
  locations_public = each.value.locations_public
  period           = each.value.period

  enable_screenshot_on_failure_and_script = false

  script = each.value.script

  runtime_type_version = each.value.runtime_type_version
  runtime_type         = each.value.runtime_type
  script_language      = each.value.script_language

  tag {
    key    = each.value.key
    values = each.value.values
  }
}