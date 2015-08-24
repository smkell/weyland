require 'aruba/cucumber'
require 'aruba/in_process'
require 'weyland/runner'

Aruba.process = Aruba::Processes::InProcess
Aruba.process.main_class = Weyland::Runner
