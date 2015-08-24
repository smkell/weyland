require 'weyland/version'

module Weyland
	class Runner
		def initialize(argv, stdin=STDIN, stdout=STDOUT, stderr=STDERR, kernel=Kernel)
			@argv, @stdin, @stdout, @stderr, @kernel = argv, stdin, stdout, stderr, kernel
		end

		def execute!
			# your code here, assign a value to exitstatus
			@stdout.puts "weyland version #{Weyland::VERSION}"
			@kernel.exit(exitstatus)
		end
	end
end