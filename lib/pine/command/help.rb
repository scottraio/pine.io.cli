class Pine::Command::Help < Pine::Command::Base

	PRIMARY_NAMESPACES = %w( deploy apps )

	def initialize
		puts help_for_root
	end

	private

	def summary_for_namespaces(namespaces)
		namespaces.each do |namespace|
			puts "  #{namespace}  # help text "
		end
	end

	def help_for_root
		puts grey("Usage: pine COMMAND [--app APP] [command-specific-options]")
		puts
		puts
		summary_for_namespaces(PRIMARY_NAMESPACES)
		puts
		puts
	end

end