module Pine
	module Command

		def self.commands
			@@commands ||= {}
		end

		def self.load
			Dir[File.join(File.dirname(__FILE__), "command", "*.rb")].each do |file|
				require file
			end
		end

		def self.run(command, args=[])
			
			Pine::Command::Help.new
			#command[:options].each do |name, option|
			#	parser.on("-#{option[:short]}", "--#{option[:long]}", option[:desc]) do |value|
			#		opts[name.gsub("-", "_").to_sym] = value
			#	end
			#end

		end

	end
end