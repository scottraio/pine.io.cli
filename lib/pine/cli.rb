require "pine"
require "pine/command"

class Pine::CLI

	def self.start(*args)
		command = args.shift.strip rescue "help"
		Pine::Command.load
		Pine::Command.run(command, args)
	end

end