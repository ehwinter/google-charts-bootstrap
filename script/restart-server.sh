#!/bin/bash
# run this after a deploy if it does not have a clean restart.
# ehw, 9/15/12
echo Restarting server post deploy.
date
ls -l ~/railsapps/shuttle/current/REVISION
cat ~/railsapps/shuttle/current/REVISION
rake assets:precompile
sudo apachectl restart
echo done at `date`
