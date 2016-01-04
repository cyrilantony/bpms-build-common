repositories.remote << "http://bpms-build-blr:8081/nexus/content/repositories/m2repo"

repositories.release_to[:username] ||= "intalio"
repositories.release_to[:password] ||= "intalio321"
repositories.release_to[:url] ||= "sftp://intalio@bpms-build-blr/media/disk1/repository"
