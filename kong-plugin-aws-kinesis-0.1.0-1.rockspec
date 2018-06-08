-- This file was automatically generated for the LuaDist project.

package = "kong-plugin-aws-kinesis"
version = "0.1.0-1"
supported_platforms = {"linux", "macosx"}
-- LuaDist source
source = {
  tag = "0.1.0-1",
  url = "git://github.com/LuaDist-testing/kong-plugin-aws-kinesis.git"
}
-- Original source
-- source = {
--   url = "git://github.com/rbang1/kong-plugin-aws-kinesis",
--   tag = "0.1.0"
-- }

description = {
  summary = "Kong plugin to write to a AWS Kinesis Stream",
  homepage = "https://github.com/rbang1/kong-plugin-aws-kinesis",
  license = "Apache"
}

dependencies = {
  "lua >= 5.1",
  "jsonpath"
}

local pluginName = "aws-kinesis"
build = {
  type = "builtin",
  modules = {
    ["kong.plugins."..pluginName..".handler"] = "src/handler.lua",
    ["kong.plugins."..pluginName..".schema"] = "src/schema.lua",
    ["kong.plugins."..pluginName..".jsontransform"] = "src/jsontransform.lua",
  }
}