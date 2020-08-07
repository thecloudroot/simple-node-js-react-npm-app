#!/usr/bin/env sh
echo 'The following "npm" command builds your Node.js/React application for'
echo 'production in the local "build" directory (i.e. within the'
echo '"/var/jenkins_home/workspace/simple-node-js-react-app" directory),'
echo 'correctly bundles React in production mode and optimizes the build for'
echo 'the best performance.'
#set -x
npm run build
npm install -g serve
#set +x
echo 'The following "npm" command runs your Node.js/React application in'
echo 'development mode and makes the application available for web browsing.'
#set -x
serve -s build -l 3000 &
sleep 1
echo $! > .pidfile
#set +x
echo 'Now...'
echo 'Visit http://localhost:3000 to see your Node.js/React application in action.'