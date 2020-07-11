# README

Our controller methods are overrun with tracking calls and other side effects of a request that should not impact or be apart of the main code handeling a request.

This application is the first iteration of a tracking gem that allows
* seperating the domain of tracking
* binding that code to the request to access instance variables, method calls, etc.
