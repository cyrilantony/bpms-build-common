#Utility Class which is used for common functions required during build process

class CommonFunctions
	def self.getHashFromFile(file_name)
		file_data = {}

		if(File.exists?(file_name))
			File.open(file_name, 'r') do |file|
				file.each_line do |line|

					if(!line.start_with?('#') && !line.include?('build.summary'))
						line_data = line.split('=')
						file_data[line_data[0]] = line_data[1]
					end
				end
			end
		end

		return file_data
	end
end
