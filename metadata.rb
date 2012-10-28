maintainer       "Heavy Water Software Inc."
maintainer_email "ops@hw-ops.com"
license          "Apache 2.0"
description      "Installs/Configures graphite"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.4.0"

supports "ubuntu"

depends "python"
depends "apache2"

suggests "runit"
suggests "systemd"
suggests "s6"

suggests "graphiti"
