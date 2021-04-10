Steps:
1. Build the container `docker build -t rabbit-stomp-error .`
2. Run the container ` docker run -it -p 15672:15672 -p 15674:15674 -p 8080:80 rabbit-stomp-error`
3. Go to http://localhost:8080/stomp-login.html, open the web console and notice the stomp error frame
4. Go to http://localhost:8080/stomp-subscribe.html, open the web console and notice no stomp error frame, just socket closed