/*!
 Copyright 2013, Temboo Inc.
 
 Licensed under the Apache License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.apache.org/licenses/LICENSE-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.
 
 This file included as part of an example iOS application distributed with the
 Temboo iOS SDK, intended to demonstrate how to use the Temboo SDK to create
 apps that interact with 3rd party APIs and services. 
 
 Visit the "getting started" section of our website at www.temboo.com for the tutorial 
 that goes along with this example.
 */

#import <UIKit/UIKit.h>
#import "TMBChoreography.h"

@interface NYTimesReviewSearchVC : UIViewController <TMBChoreographyDelegate, UISearchBarDelegate>
@property (nonatomic, retain) IBOutlet UISearchBar *searchBar;
@property (nonatomic, retain) IBOutlet UITextView *review;
@property (nonatomic, retain) IBOutlet UIActivityIndicatorView *spinner;
@end
