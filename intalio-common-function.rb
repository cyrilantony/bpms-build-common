#Utility Class which is used for common functions required during build process

class CommonFunctions
	def self.getIntalioVersionFile()
		if(File.exists?("hudsonBuild.properties"))
			cp "hudsonBuild.properties", "INTALIO_BUILD_ENV"
		end

		return "INTALIO_VERSION"
	end
end
