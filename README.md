# Has Tomcat Started?

Simple one-file script to play a sound when tomcat (or any other app-server) has started up.


You can run it as a screen (background thread doesn't seem to work nicely with sound playing) and start your server.

Currently I'm working with a case when application server is starting 1 or 2 minutes which is tempting to use the time for something different. This makes context-switching an issue so I wanted to play it a sound when server is ready to immediately verify the results.

Do whatever you want with it.

PS. Don't forget to do `chmod u+x has-tomcat-started.sh` to make it executable!
