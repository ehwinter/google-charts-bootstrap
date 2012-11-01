# Current Git Revision according to REVISION
revision_file="REVISION"
GIT_SHA=File.exists?(revision_file)? File.read(revision_file).chomp : "NoRevision"
