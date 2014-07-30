name "devbox"
description "Developer Box for Courses"
default_attributes(
  "authorization" => {
    "sudo" => {
	  "prefix" => "/etc",
      "groups" => ["admin", "sudo"],
      "users" => ["developer"],
      "passwordless" => false,
	  "sudoers_defaults" => ["env_reset"],
	  "agent_forwarding" => [],
	  "command_aliases" => []
    }
  },
  "java" => {
    "install_flavor" => "oracle",
    "jdk_version" => "8",
    "oracle" => {
      "accept_oracle_download_terms" => true
    }
  }
)

run_list(
  "recipe[basebox]", "recipe[java]", "recipe[webdev]"
)
