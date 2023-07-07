scriptedApiData = {
  "d1" = {
    status               = "ENABLED"
    name                 = "scriptes API monitor 1"
    type                 = "SCRIPT_API"
    locations_public     = ["AP_SOUTH_1", "AP_EAST_1"]
    period               = "EVERY_6_HOURS"

    script               = "script1.js"

    script_language      = "JAVASCRIPT"
    runtime_type         = "NODE_API"
    runtime_type_version = "16.10"
    key    = "some_key"
    values = ["some_value"]
  }
  "d2" = {
    status               = "ENABLED"
    name                 = "scriptes API monitor 2"
    type                 = "SCRIPT_API"
    locations_public     = ["AP_SOUTH_1", "AP_EAST_1"]
    period               = "EVERY_6_HOURS"

    script               = "script2.js"

    script_language      = "JAVASCRIPT"
    runtime_type         = "NODE_API"
    runtime_type_version = "16.10"
    key    = "some_key"
    values = ["some_value"]
  }
}

scriptedBrouserData = {
  "d1" = {
    status           = "ENABLED"
    name             = "scriptes brouser monitor 1"
    type             = "SCRIPT_BROWSER"
    locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
    period           = "EVERY_6_HOURS"

    enable_screenshot_on_failure_and_script = false

    script = "$browser.get('https://one.newrelic.com')"

    runtime_type_version = "100"
    runtime_type         = "CHROME_BROWSER"
    script_language      = "JAVASCRIPT"
    key    = "some_key"
    values = ["some_value"]
  }
  "d2" = {
    status           = "ENABLED"
    name             = "scriptes brouser monitor 2"
    type             = "SCRIPT_BROWSER"
    locations_public = ["AP_SOUTH_1", "AP_EAST_1"]
    period           = "EVERY_6_HOURS"

    enable_screenshot_on_failure_and_script = false

    script = "$browser.get('https://google.com')"

    runtime_type_version = "100"
    runtime_type         = "CHROME_BROWSER"
    script_language      = "JAVASCRIPT"
    key    = "some_key"
    values = ["some_value"]
  }
}