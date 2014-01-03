#Utility Class which is used for common functions required during build process

HUDSON_PROPERTIES = "hudsonBuild.properties"
INTALIO_BUILD_ENV = "INTALIO_BUILD_ENV"

class CommonFunctions
	def self.getIntalioVersionFile()
		if(File.exists?(INTALIO_BUILD_ENV))
			rm INTALIO_BUILD_ENV
		end

		if(File.exists?(HUDSON_PROPERTIES))
			cp HUDSON_PROPERTIES, INTALIO_BUILD_ENV
		end

		return INTALIO_BUILD_ENV
	end
end
