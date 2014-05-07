#Utility Class which is used for common functions required during build process
require 'rubygems'
require 'nokogiri'

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

	def self.readWebApplicationContext(path)
	    f = File.open(path)
	    return Nokogiri::XML(f)
	end

	def self.findSpringServlet(doc, namespace)
	    servletNodes = doc.xpath("//ns:servlet", 'ns' => namespace)

	    servletNodes.each do |servlet|
		if(servlet.css("servlet-name").first.content.include? '-spring-servlet')
		    return servlet
		end

		return nil
	    end
	end

	def self.findNonSpringServlets(doc, namespace)
	    servlets = Array.new
	    servletNodes = doc.xpath("//ns:servlet", 'ns' => namespace)

	    servletNodes.each do |servlet|
		if(!(servlet.css("servlet-name").first.content.include? '-spring-servlet'))
		    servlets.push(servlet)
		end
	    end

	    return servlets
	end

	def self.getServletName(servletNode)
	    return servletNode.css("servlet-name").first.content
	end

	def self.getContextConfigLocationParam(springServletNode, namespace)
	    initParamNode = springServletNode.xpath("ns:init-param[ns:param-name='contextConfigLocation']/ns:param-value", 'ns' => 'http://java.sun.com/xml/ns/javaee')
	    return initParamNode.first.content
	end

	def self.getServletUrlPattern(doc, servletName, namespace)
	    urlPatterns = Array.new

	    servletMappingNodes = doc.xpath("//ns:servlet-mapping[ns:servlet-name='"+servletName+"']", 'ns' => 'http://java.sun.com/xml/ns/javaee')

	    servletMappingNodes.each do |mapping|
		urlPatterns.push(mapping.css("url-pattern"))
	    end

	    return urlPatterns
	end

	def self.getServletMappings(doc, servletName, namespace)
	    return doc.xpath("//ns:servlet-mapping[ns:servlet-name='"+servletName+"']", 'ns' => 'http://java.sun.com/xml/ns/javaee')
	end

	def self.getFilterNodes(doc, namespace)

	end

	def self.getFilterNode(doc, filterName, namespace)

	end

	def self.getFilterUrlMapping(doc, filterName, nameSpace)

	end

	def self.addSpringContextPathToSpringServlet(springServletNode, contextPath, namespace)
	    initParamNode = springServletNode.xpath("ns:init-param[ns:param-name='contextConfigLocation']/ns:param-value", 'ns' => namespace)
	    contextConfigLocation = initParamNode.first.content

	    if(!(contextConfigLocation.include? contextPath))
		initParamNode.first.content = contextConfigLocation+", "+contextPath
	    end
	end

	def self.addServletMappingWithUrlPattern(doc, servletNode, urlPatterns)
	    urlPatterns.each do |urlPattern|
		servletMappingNode = Nokogiri::XML::Node.new "servlet-mapping", doc

		servletNameNode = Nokogiri::XML::Node.new "servlet-name", doc
		servletNameNode.content = servletNode.css("servlet-name").first.content

		servletMappingNode.add_child(servletNameNode)
		servletMappingNode.add_child(urlPattern)
		servletNode.add_next_sibling(servletMappingNode)
	    end
	end

	def self.addServlet(doc, servletNode)
	    doc.add_child(servletNode)
	end

	def self.addServletMapping(servletNode, servletMappingNodes)
	    servletMappingNodes.each do |mapping|
		servletNode.add_next_sibling(mapping)
	    end
	end

	def self.writeWebApplicationContext(doc, path)
	    file = File.open(path, "w")
	    file.write(doc.to_xml)
	    file.close()
	end
end
