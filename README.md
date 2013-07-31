Temboo-iOS-SDK-Example
======================

Basic updates to get the [Temboo iOS SDK Tutorial](https://www.temboo.com/support/getting-started/sdk/ios 
"iOS SDK Tutorial") working.

The tutorial demonstrates the use of the Temboo New York Times "Search Reviews by Keyword" and 
YouTube "Search Results" wrapper APIs, aka Choreos. The tutorial did not work out of the box for me. 
(07/25/2013 - It appears the Temboo iOS SDK was updated without updating the ExampleApplication project.)
In this repo are the simple fixes I made to get the tutorial working and implement some minimal error handling.

If comparing the original Temboo iOS SDK with the source in this repo, you will notice I have renamed the 
original two UIViewControllers from FirstViewController and SecondViewController in 
ExampleApplication/Classes to NYTimesReviewSearchVC and YouTubeSearchTableVC for clarity. The associated 
xibs are renamed also.

**Usage:**<br \>
1.  You will need a [Temboo](http://www.temboo.com "Temboo") account, available free.
2.  The Temboo iOS SDK Tutorial can be found [here](https://www.temboo.com/support/getting-started/sdk/ios "iOS SDK Tutorial"). Temboo account login required.


DISCLAIMER
======================
I am not associated with Temboo in any way. All original Temboo copyrights have been preserved in their source files in this project.
