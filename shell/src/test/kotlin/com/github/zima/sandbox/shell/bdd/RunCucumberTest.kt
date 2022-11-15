package com.github.zima.sandbox.shell.bdd

import io.cucumber.junit.platform.engine.Constants
import org.junit.platform.suite.api.*

@Suite
@IncludeEngines("cucumber")
@SelectClasspathResource("bdd")
@ConfigurationParameter(key = Constants.GLUE_PROPERTY_NAME, value = "com.github.zima.sandbox.shell.bdd")
class RunCucumberTest
