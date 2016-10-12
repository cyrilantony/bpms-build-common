repositories.remote << "http://bpms-build.cloud.everteam.com:8081/nexus/content/repositories/m2repo"

repositories.release_to[:username] ||= "intalio"
repositories.release_to[:password] ||= "intalio321"
repositories.release_to[:url] ||= "sftp://intalio@bpms-build.cloud.everteam.com/media/disk1/repository"
