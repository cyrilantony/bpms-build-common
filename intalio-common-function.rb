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

	def self.getSpringServlet(doc, namespace)
	    servletNodes = doc.xpath("//ns:servlet", 'ns' => namespace)

	    servletNodes.each do |servletNode|
		if(servletNode.css("servlet-name").first.content.include? '-spring-servlet')
		    return servletNode
		end
	    end

	    return nil
	end

	def self.getNonSpringServlets(doc, namespace)
	    servletNodes = Array.new
	    servletNodes = doc.xpath("//ns:servlet", 'ns' => namespace)

	    servletNodes.each do |servletNode|
		if(!(servletNode.css("servlet-name").first.content.include? '-spring-servlet'))
		    servletNodes.push(servletNode)
		end
	    end

	    return servletNodes
	end

	def self.getServlets(doc, namespace)
	    return doc.xpath("//ns:servlet", 'ns' => namespace)
	end

	def self.getServletName(servletNode)
	    return servletNode.css("servlet-name").first.content
	end

	def self.getSpringContextConfigLocationParam(springServletNode, namespace)
	    initParamNode = springServletNode.xpath("ns:init-param[ns:param-name='contextConfigLocation']/ns:param-value", 'ns' => 'http://java.sun.com/xml/ns/javaee')
	    return initParamNode.first.content
	end

	def self.getServletUrlPattern(doc, servletName, namespace)
	    urlPatterns = Array.new

	    servletMappingNodes = doc.xpath("//ns:servlet-mapping[ns:servlet-name='"+servletName+"']", 'ns' => 'http://java.sun.com/xml/ns/javaee')

	    servletMappingNodes.each do |mappingNode|
		urlPatterns.push(mappingNode.css("url-pattern"))
	    end

	    return urlPatterns
	end

	def self.getServletMappings(doc, servletName, namespace)
	    return doc.xpath("//ns:servlet-mapping[ns:servlet-name='"+servletName+"']", 'ns' => namespace)
	end

	def self.getFilters(doc, namespace)
	    return doc.xpath("//ns:filter", 'ns' => namespace)
	end

	def self.getFilter(doc, filterName, namespace)
	    return doc.xpath("//ns:filter[ns:filter-name='"+filterName+"']", 'ns' => namespace).first
	end

	def self.getFilterName(filterName)
	    return filterName.css("filter-name").first.content
	end

	def self.getFilterMappings(doc, filterName, namespace)
	    return doc.xpath("//ns:filter-mapping[ns:filter-name='"+filterName+"']", 'ns' => 'http://java.sun.com/xml/ns/javaee')
	end

	def self.getFilterUrlMappings(doc, filterName, nameSpace)
	    urlMappings = Array.new

	    filterMappingNodes = doc.xpath("//ns:filter-mapping[ns:filter-name='"+filterName+"']", 'ns' => 'http://java.sun.com/xml/ns/javaee')

	    filterMappingNodes.each do |mappingNode|
		if(mappingNode.css("url-pattern").empty?())
		    urlMappings.push(mappingNode.css("servlet-name"))
		else
		    urlMappings.push(mappingNode.css("url-pattern"))
		end
	    end

	    return urlMappings
	end

	def self.getWebContextParamNodes(doc, namespace)
	  return doc.xpath("//ns:context-param", 'ns' => namespace)
	end

	def self.getWebContextParamName(paramNode)
	    return paramNode.css("param-name").first.content
	end

	def self.getWebContextParamValue(paramNode)
	    return paramNode.css("param-value").first.content
	end

	def self.getWebContextParamNode(doc,paramName, namespace)
	    return doc.xpath("//ns:context-param[ns:param-name='"+paramName+"']", 'ns' => namespace).first
	end
	def self.addSpringContextPathToSpringServlet(springServletNode, contextPath, namespace)
	    paramValueNode = springServletNode.xpath("ns:init-param[ns:param-name='contextConfigLocation']/ns:param-value", 'ns' => namespace)
	    contextConfigLocation = paramValueNode.first.content

	    if(!(contextConfigLocation.include? contextPath))
		paramValueNode.first.content = contextConfigLocation+", "+contextPath
	    end
	end

	def self.addWebContextParamValue(paramNode,value)
	    paramValueNode = paramNode.css("param-value")

	    contextConfigLocation = paramValueNode.first.content

	    if(!(contextConfigLocation.include? value))
		paramValueNode.first.content = contextConfigLocation+", "+value
	    end
	end

	def self.addNewNode(doc, node)
	    webAppNode = doc.css("web-app").first
	    firstChild = webAppNode.children().first
	    firstChild.add_next_sibling(node)
	end

	def self.addServlet(doc, servletNode)
	    self.addNewNode(doc, servletNode)
	end

	def self.addServletMapping(servletNode, servletMappingNodes)
	    servletMappingNodes.each do |mappingNode|
		servletNode.add_next_sibling(mappingNode)
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

	def self.addFilter(doc, filterNode)
	    webAppNode = doc.css("web-app").first
	    firstChild = webAppNode.children().first
	    firstChild.add_next_sibling(filterNode)
	end

	def self.addFilterMappings(filterNode, filterMappingNodes)
	    filterMappingNodes.each do |mappingNode|
		filterNode.add_next_sibling(mappingNode)
	    end
	end

	def self.addFilterMappingWithUrlMapping(doc, filterNode, urlMappings)
	    urlMappings.each do |urlMapping|
		filterMappingNode = Nokogiri::XML::Node.new "filter-mapping", doc

		filterNameNode = Nokogiri::XML::Node.new "filter-name", doc
		filterNameNode.content = filterNode.css("filter-name").first.content

		filterMappingNode.add_child(filterNameNode)
		filterMappingNode.add_child(urlMapping)
		filterNode.add_next_sibling(filterMappingNode)
	    end
	end

	def self.writeWebApplicationContext(doc, path)
	    file = File.open(path, "w")
	    file.write(doc.to_xml)
	    file.close()
	end
end
