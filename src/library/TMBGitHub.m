/*!
 * @TMBGitHub.m
 *
 * Execute Choreographies from the Temboo GitHub bundle.
 *
 * iOS version 10.6.8
 *
 * LICENSE: Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 * @category   Services
 * @author     Reid Simonton, Temboo, Inc.
 * @copyright  2013 Temboo, Inc.
 * @license    http://www.apache.org/licenses/LICENSE-2.0 Apache License 2.0
 * @version    1.7
 */

#import "TMBGitHub.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the GetContents Choreo.
 */
@implementation TMBGitHub_ReposAPI_Contents_GetContents_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ArchiveFormat input for this Choreo.
	*(required, string) Either tarball or zipball. Defaults to "tarball".
	 */
	-(void)setArchiveFormat:(NSString*)ArchiveFormat {
		[super setInput:@"ArchiveFormat" toValue:ArchiveFormat];
	}

	/*!
	 * Set the value of the Ref input for this Choreo.
	*(optional, string) A valid Git reference. Defaults to "master".
	 */
	-(void)setRef:(NSString*)Ref {
		[super setInput:@"Ref" toValue:Ref];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContents Choreo.
 */
@implementation TMBGitHub_ReposAPI_Contents_GetContents_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a tarball or zipball archive for a repository. 
 */
@implementation TMBGitHub_ReposAPI_Contents_GetContents

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Contents_GetContents Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Contents/GetContents"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Contents_GetContents_ResultSet *results = [[[TMBGitHub_ReposAPI_Contents_GetContents_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetContents Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Contents_GetContents_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Contents_GetContents_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the UnstarGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_UnstarGist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id for the gist you want to unstar.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnstarGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_UnstarGist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Unstars a gist using a specified gist id.
 */
@implementation TMBGitHub_GistsAPI_Gists_UnstarGist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_UnstarGist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/UnstarGist"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_UnstarGist_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_UnstarGist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the UnstarGist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_UnstarGist_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_UnstarGist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCommit Choreo.
 */
@implementation TMBGitHub_GitDataAPI_Commits_GetCommit_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The repo associated with the commit.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the SHA input for this Choreo.
	*(required, string) The unique commit SHA associated with the commit to retrieve.
	 */
	-(void)setSHA:(NSString*)SHA {
		[super setInput:@"SHA" toValue:SHA];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCommit Choreo.
 */
@implementation TMBGitHub_GitDataAPI_Commits_GetCommit_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a specified commit from a repo.
 */
@implementation TMBGitHub_GitDataAPI_Commits_GetCommit

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GitDataAPI_Commits_GetCommit Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GitDataAPI/Commits/GetCommit"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GitDataAPI_Commits_GetCommit_ResultSet *results = [[[TMBGitHub_GitDataAPI_Commits_GetCommit_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCommit Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GitDataAPI_Commits_GetCommit_Inputs*)newInputSet {
		return [[[TMBGitHub_GitDataAPI_Commits_GetCommit_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCommit Choreo.
 */
@implementation TMBGitHub_ReposAPI_Commits_GetCommit_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the SHA input for this Choreo.
	*(required, string) The SHA of the commit to return.
	 */
	-(void)setSHA:(NSString*)SHA {
		[super setInput:@"SHA" toValue:SHA];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCommit Choreo.
 */
@implementation TMBGitHub_ReposAPI_Commits_GetCommit_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an individual commit.
 */
@implementation TMBGitHub_ReposAPI_Commits_GetCommit

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Commits_GetCommit Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Commits/GetCommit"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Commits_GetCommit_ResultSet *results = [[[TMBGitHub_ReposAPI_Commits_GetCommit_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCommit Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Commits_GetCommit_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Commits_GetCommit_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCommitComment Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_GetCommitComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The comment id.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo that the comment is associated with.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCommitComment Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_GetCommitComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an individual commit comment.
 */
@implementation TMBGitHub_ReposAPI_Comments_GetCommitComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Comments_GetCommitComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Comments/GetCommitComment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Comments_GetCommitComment_ResultSet *results = [[[TMBGitHub_ReposAPI_Comments_GetCommitComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCommitComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Comments_GetCommitComment_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Comments_GetCommitComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetAllReferences Choreo.
 */
@implementation TMBGitHub_GitDataAPI_References_GetAllReferences_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo associated with the references to retrieve.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllReferences Choreo.
 */
@implementation TMBGitHub_GitDataAPI_References_GetAllReferences_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an array of all the references on the system, including things like notes and stashes if they exist on the server.
 */
@implementation TMBGitHub_GitDataAPI_References_GetAllReferences

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GitDataAPI_References_GetAllReferences Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GitDataAPI/References/GetAllReferences"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GitDataAPI_References_GetAllReferences_ResultSet *results = [[[TMBGitHub_GitDataAPI_References_GetAllReferences_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetAllReferences Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GitDataAPI_References_GetAllReferences_Inputs*)newInputSet {
		return [[[TMBGitHub_GitDataAPI_References_GetAllReferences_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListIssuesForRepo Choreo.
 */
@implementation TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Assignee input for this Choreo.
	*(required, string) Can be set to a username, "none" for issues with no assinged user, or * for issues with any assigned user.
	 */
	-(void)setAssignee:(NSString*)Assignee {
		[super setInput:@"Assignee" toValue:Assignee];
	}

	/*!
	 * Set the value of the Direction input for this Choreo.
	*(optional, string) The direction of the sort order. Valid values are: asc or desc (the default).
	 */
	-(void)setDirection:(NSString*)Direction {
		[super setInput:@"Direction" toValue:Direction];
	}

	/*!
	 * Set the value of the Labels input for this Choreo.
	*(optional, string) A comma separated list of label names (i.e. bug, ui, etc).
	 */
	-(void)setLabels:(NSString*)Labels {
		[super setInput:@"Labels" toValue:Labels];
	}

	/*!
	 * Set the value of the Mentioned input for this Choreo.
	*(optional, string) A Github username that is mentioned.
	 */
	-(void)setMentioned:(NSString*)Mentioned {
		[super setInput:@"Mentioned" toValue:Mentioned];
	}

	/*!
	 * Set the value of the Milestone input for this Choreo.
	*(required, string) Can be set to a milestone number, "none" for issues with no milestone, or * for issues with any milestone.
	 */
	-(void)setMilestone:(NSString*)Milestone {
		[super setInput:@"Milestone" toValue:Milestone];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) A timestamp in ISO 8601 format (YYYY-MM-DDTHH:MM:SSZ). Returns issues since this date.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Indicates how the issues will be sorted in the response. Valid sort options are: created (the default), updated, comments.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Returns issues with a particular state: open (the default) or closed.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) A GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListIssuesForRepo Choreo.
 */
@implementation TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * List all issues for a specified repository.
 */
@implementation TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/IssuesAPI/Issues/ListIssuesForRepo"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_ResultSet *results = [[[TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListIssuesForRepo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_Inputs*)newInputSet {
		return [[[TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCommits Choreo.
 */
@implementation TMBGitHub_ReposAPI_Commits_ListCommits_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) Returns only commits containing this file path.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the SHA input for this Choreo.
	*(optional, string) The SHA or branch to start listing commits from.
	 */
	-(void)setSHA:(NSString*)SHA {
		[super setInput:@"SHA" toValue:SHA];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCommits Choreo.
 */
@implementation TMBGitHub_ReposAPI_Commits_ListCommits_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists commits for a specified repository.
 */
@implementation TMBGitHub_ReposAPI_Commits_ListCommits

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Commits_ListCommits Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Commits/ListCommits"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Commits_ListCommits_ResultSet *results = [[[TMBGitHub_ReposAPI_Commits_ListCommits_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCommits Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Commits_ListCommits_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Commits_ListCommits_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateFork Choreo.
 */
@implementation TMBGitHub_ReposAPI_Forks_CreateFork_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Org input for this Choreo.
	*(optional, string) The organization login. The repository will be forked into this organization.
	 */
	-(void)setOrg:(NSString*)Org {
		[super setInput:@"Org" toValue:Org];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFork Choreo.
 */
@implementation TMBGitHub_ReposAPI_Forks_CreateFork_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a fork for the authenticated user.
 */
@implementation TMBGitHub_ReposAPI_Forks_CreateFork

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Forks_CreateFork Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Forks/CreateFork"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Forks_CreateFork_ResultSet *results = [[[TMBGitHub_ReposAPI_Forks_CreateFork_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateFork Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Forks_CreateFork_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Forks_CreateFork_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the AddCollaborator Choreo.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_AddCollaborator_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Collaborator input for this Choreo.
	*(required, string) The username of the collaborator to check.
	 */
	-(void)setCollaborator:(NSString*)Collaborator {
		[super setInput:@"Collaborator" toValue:Collaborator];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo to add a collaborator to.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCollaborator Choreo.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_AddCollaborator_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Adds a collaborator to a specified repository.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_AddCollaborator

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Collaborators_AddCollaborator Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Collaborators/AddCollaborator"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Collaborators_AddCollaborator_ResultSet *results = [[[TMBGitHub_ReposAPI_Collaborators_AddCollaborator_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the AddCollaborator Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Collaborators_AddCollaborator_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Collaborators_AddCollaborator_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReference Choreo.
 */
@implementation TMBGitHub_GitDataAPI_References_GetReference_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Ref input for this Choreo.
	*(required, string) The reference to retrieve. Must be formatted as refs/heads/branch. Refs can be retrieved by running the GetAllReferences and parsing the value for "ref".
	 */
	-(void)setRef:(NSString*)Ref {
		[super setInput:@"Ref" toValue:Ref];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo associated with the references to retrieve.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReference Choreo.
 */
@implementation TMBGitHub_GitDataAPI_References_GetReference_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves an individual reference on the system, including things like notes and statshes if they exist on the server.
 */
@implementation TMBGitHub_GitDataAPI_References_GetReference

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GitDataAPI_References_GetReference Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GitDataAPI/References/GetReference"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GitDataAPI_References_GetReference_ResultSet *results = [[[TMBGitHub_GitDataAPI_References_GetReference_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReference Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GitDataAPI_References_GetReference_Inputs*)newInputSet {
		return [[[TMBGitHub_GitDataAPI_References_GetReference_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGistsForAuthenticatedUser Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. If not provided, all public gists are returned.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGistsForAuthenticatedUser Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of gists for the authenticated user or if called anonymously, return all public gists.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/ListGistsForAuthenticatedUser"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGistsForAuthenticatedUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListYourRepos Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListYourRepos_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Direction input for this Choreo.
	*(optional, string) Valid values are asc or desc. Default behavior is desc unless sorting by full_name in which case, the direction is asc.
	 */
	-(void)setDirection:(NSString*)Direction {
		[super setInput:@"Direction" toValue:Direction];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) The sort order of the results. Valid values are: created, updated, pushed, or full_name (the default).
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of repos to return. Valid values are: all (the default), owner, public, private, or member.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListYourRepos Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListYourRepos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of repositories for the authenticated user.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListYourRepos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_ListYourRepos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/ListYourRepos"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_ListYourRepos_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_ListYourRepos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListYourRepos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_ListYourRepos_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_ListYourRepos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_CreateGist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) The description for this gist.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the FileContents input for this Choreo.
	*(required, string) The file contents of the gist.
	 */
	-(void)setFileContents:(NSString*)FileContents {
		[super setInput:@"FileContents" toValue:FileContents];
	}

	/*!
	 * Set the value of the FileName input for this Choreo.
	*(required, string) The file name of the gist (i.e. myProject.py).
	 */
	-(void)setFileName:(NSString*)FileName {
		[super setInput:@"FileName" toValue:FileName];
	}

	/*!
	 * Set the value of the Public input for this Choreo.
	*(required, boolean) Indicates whether or not the gist is public or private.
	 */
	-(void)setPublic:(NSString*)Public {
		[super setInput:@"Public" toValue:Public];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The user who is creating the gist.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_CreateGist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a gist.
 */
@implementation TMBGitHub_GistsAPI_Gists_CreateGist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_CreateGist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/CreateGist"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_CreateGist_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_CreateGist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateGist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_CreateGist_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_CreateGist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListReposByOrg Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListReposByOrg_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Org input for this Choreo.
	*(required, string) The name of the organization.
	 */
	-(void)setOrg:(NSString*)Org {
		[super setInput:@"Org" toValue:Org];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of repos to return. Valid values are: all (the default), public, member, or private.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListReposByOrg Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListReposByOrg_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieces a list of repositories for the specified organization.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListReposByOrg

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_ListReposByOrg Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/ListReposByOrg"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_ListReposByOrg_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_ListReposByOrg_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListReposByOrg Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_ListReposByOrg_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_ListReposByOrg_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetRepo Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_GetRepo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo to retrieve.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRepo Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_GetRepo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a specified repository.
 */
@implementation TMBGitHub_ReposAPI_Repos_GetRepo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_GetRepo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/GetRepo"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_GetRepo_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_GetRepo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetRepo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_GetRepo_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_GetRepo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_GetGist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id for the gist you want to retrieve.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_GetGist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns an individual gist with a given id.
 */
@implementation TMBGitHub_GistsAPI_Gists_GetGist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_GetGist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/GetGist"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_GetGist_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_GetGist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetGist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_GetGist_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_GetGist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetReadMe Choreo.
 */
@implementation TMBGitHub_ReposAPI_Contents_GetReadMe_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Ref input for this Choreo.
	*(optional, string) The name of the commit, branch, or tag. Defaults to "master".
	 */
	-(void)setRef:(NSString*)Ref {
		[super setInput:@"Ref" toValue:Ref];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReadMe Choreo.
 */
@implementation TMBGitHub_ReposAPI_Contents_GetReadMe_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves the README file for a repository.
 */
@implementation TMBGitHub_ReposAPI_Contents_GetReadMe

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Contents_GetReadMe Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Contents/GetReadMe"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Contents_GetReadMe_ResultSet *results = [[[TMBGitHub_ReposAPI_Contents_GetReadMe_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetReadMe Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Contents_GetReadMe_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Contents_GetReadMe_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTeams Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListTeams_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo to list teams for.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTeams Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListTeams_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of teams for the specified repository.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListTeams

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_ListTeams Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/ListTeams"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_ListTeams_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_ListTeams_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTeams Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_ListTeams_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_ListTeams_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateCommitComment Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_CreateCommitComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, string) The comment text.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the Line input for this Choreo.
	*(required, integer) The line number in the file to comment on.
	 */
	-(void)setLine:(NSString*)Line {
		[super setInput:@"Line" toValue:Line];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(required, string) The relative path of the file to comment on.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Position input for this Choreo.
	*(required, integer) The line index in the diff to comment on.
	 */
	-(void)setPosition:(NSString*)Position {
		[super setInput:@"Position" toValue:Position];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo that the comment is associated with.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the SHA input for this Choreo.
	*(required, string) The SHA or id of the commit.
	 */
	-(void)setSHA:(NSString*)SHA {
		[super setInput:@"SHA" toValue:SHA];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCommitComment Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_CreateCommitComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a comment on a specified commit.
 */
@implementation TMBGitHub_ReposAPI_Comments_CreateCommitComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Comments_CreateCommitComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Comments/CreateCommitComment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Comments_CreateCommitComment_ResultSet *results = [[[TMBGitHub_ReposAPI_Comments_CreateCommitComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateCommitComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Comments_CreateCommitComment_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Comments_CreateCommitComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CheckGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_CheckGist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id for the gist you want to check.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CheckGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_CheckGist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (string) A boolean flag that indicates whether or not the gist is starred.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Checks whether or not a gist is starred.
 */
@implementation TMBGitHub_GistsAPI_Gists_CheckGist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_CheckGist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/CheckGist"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_CheckGist_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_CheckGist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CheckGist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_CheckGist_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_CheckGist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateRepo Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_CreateRepo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Description input for this Choreo.
	*(optional, string) A text description for the repo.
	 */
	-(void)setDescription:(NSString*)Description {
		[super setInput:@"Description" toValue:Description];
	}

	/*!
	 * Set the value of the HasDownloads input for this Choreo.
	*(optional, boolean) Se to "true" to enable downloads for this repository. Defaults to "true".
	 */
	-(void)setHasDownloads:(NSString*)HasDownloads {
		[super setInput:@"HasDownloads" toValue:HasDownloads];
	}

	/*!
	 * Set the value of the HasIssues input for this Choreo.
	*(optional, boolean) Set to "true" to enable issues for this repository. Defaults to "true."
	 */
	-(void)setHasIssues:(NSString*)HasIssues {
		[super setInput:@"HasIssues" toValue:HasIssues];
	}

	/*!
	 * Set the value of the HasWiki input for this Choreo.
	*(optional, boolean) Set to "true" to enable the wiki for this repository. Defaults to "true".
	 */
	-(void)setHasWiki:(NSString*)HasWiki {
		[super setInput:@"HasWiki" toValue:HasWiki];
	}

	/*!
	 * Set the value of the Homepage input for this Choreo.
	*(optional, string) A homepage link.
	 */
	-(void)setHomepage:(NSString*)Homepage {
		[super setInput:@"Homepage" toValue:Homepage];
	}

	/*!
	 * Set the value of the Name input for this Choreo.
	*(required, string) The name of the repo being created.
	 */
	-(void)setName:(NSString*)Name {
		[super setInput:@"Name" toValue:Name];
	}

	/*!
	 * Set the value of the Private input for this Choreo.
	*(optional, boolean) A flag indicating the the repo is private or public. Set to "true" to create a private repository. Defaults to "false".
	 */
	-(void)setPrivate:(NSString*)Private {
		[super setInput:@"Private" toValue:Private];
	}

	/*!
	 * Set the value of the TeamID input for this Choreo.
	*(optional, integer) The id of the team that will be granted access to this repository. Only valid when creating a repo in an organization.
	 */
	-(void)setTeamID:(NSString*)TeamID {
		[super setInput:@"TeamID" toValue:TeamID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRepo Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_CreateRepo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a new repository for the authenticated user.
 */
@implementation TMBGitHub_ReposAPI_Repos_CreateRepo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_CreateRepo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/CreateRepo"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_CreateRepo_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_CreateRepo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateRepo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_CreateRepo_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_CreateRepo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetCollaboratorStatus Choreo.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Collaborator input for this Choreo.
	*(required, string) The username of the collaborator to check.
	 */
	-(void)setCollaborator:(NSString*)Collaborator {
		[super setInput:@"Collaborator" toValue:Collaborator];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo that has the collaborators to retrieve.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCollaboratorStatus Choreo.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Checks to see if the provided user is a collaborator.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Collaborators/GetCollaboratorStatus"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_ResultSet *results = [[[TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetCollaboratorStatus Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListComments Choreo.
 */
@implementation TMBGitHub_GistsAPI_Comments_ListComments_Inputs

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id of the gist to fetch comments for.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListComments Choreo.
 */
@implementation TMBGitHub_GistsAPI_Comments_ListComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves comments for a specified gist.
 */
@implementation TMBGitHub_GistsAPI_Comments_ListComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Comments_ListComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Comments/ListComments"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Comments_ListComments_ResultSet *results = [[[TMBGitHub_GistsAPI_Comments_ListComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Comments_ListComments_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Comments_ListComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListUserRepos Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListUserRepos_Inputs

	/*!
	 * Set the value of the Direction input for this Choreo.
	*(optional, string) Valid values are asc or desc. Default behavior is desc unless sorting by full_name in which case, the direction is asc.
	 */
	-(void)setDirection:(NSString*)Direction {
		[super setInput:@"Direction" toValue:Direction];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) The sort order of the results. Valid values are: created, updated, pushed, or full_name (the default).
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(optional, string) The type of repos to return. Valid values are: all (the default), owner, public, or member.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUserRepos Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListUserRepos_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of public repositories for the specified user.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListUserRepos

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_ListUserRepos Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/ListUserRepos"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_ListUserRepos_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_ListUserRepos_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListUserRepos Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_ListUserRepos_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_ListUserRepos_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCommentsForRepo Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo to list comments for.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCommentsForRepo Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of comments for the specified repository.
 */
@implementation TMBGitHub_ReposAPI_Comments_ListCommentsForRepo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Comments_ListCommentsForRepo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Comments/ListCommentsForRepo"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_ResultSet *results = [[[TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCommentsForRepo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetBranch Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_GetBranch_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Branch input for this Choreo.
	*(required, string) The name of the branch to retrieve.
	 */
	-(void)setBranch:(NSString*)Branch {
		[super setInput:@"Branch" toValue:Branch];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBranch Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_GetBranch_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves information for a specified branch.
 */
@implementation TMBGitHub_ReposAPI_Repos_GetBranch

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_GetBranch Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/GetBranch"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_GetBranch_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_GetBranch_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetBranch Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_GetBranch_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_GetBranch_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateComment Choreo.
 */
@implementation TMBGitHub_GistsAPI_Comments_CreateComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Body input for this Choreo.
	*(required, string) The text for the comment.
	 */
	-(void)setBody:(NSString*)Body {
		[super setInput:@"Body" toValue:Body];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id of the gist to comment on.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateComment Choreo.
 */
@implementation TMBGitHub_GistsAPI_Comments_CreateComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a comment for a specified gist.
 */
@implementation TMBGitHub_GistsAPI_Comments_CreateComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Comments_CreateComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Comments/CreateComment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Comments_CreateComment_ResultSet *results = [[[TMBGitHub_GistsAPI_Comments_CreateComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Comments_CreateComment_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Comments_CreateComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@implementation TMBGitHub_OAuth_FinalizeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the CallbackID input for this Choreo.
	*(required, string) The callback token returned by the InitializeOAuth Choreo. Used to retrieve the authorization code after the user authorizes.
	 */
	-(void)setCallbackID:(NSString*)CallbackID {
		[super setInput:@"CallbackID" toValue:CallbackID];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by GitHub after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the ClientSecret input for this Choreo.
	*(required, string) The Client Secret provided by GitHub after registering your application.
	 */
	-(void)setClientSecret:(NSString*)ClientSecret {
		[super setInput:@"ClientSecret" toValue:ClientSecret];
	}

	/*!
	 * Set the value of the Timeout input for this Choreo.
	*(optional, integer) The amount of time (in seconds) to poll your Temboo callback URL to see if your app's user has allowed or denied the request for access. Defaults to 20. Max is 60.
	 */
	-(void)setTimeout:(NSString*)Timeout {
		[super setInput:@"Timeout" toValue:Timeout];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@implementation TMBGitHub_OAuth_FinalizeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AccessToken" output from an execution of this Choreo.
	 * @return - NSString* (string) The access token for the user that has granted access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAccessToken {
		return [super getOutputByName:@"AccessToken"];
	}
	
@end

/*!
 * Completes the OAuth process by retrieving a GitHub access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@implementation TMBGitHub_OAuth_FinalizeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_OAuth_FinalizeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/OAuth/FinalizeOAuth"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_OAuth_FinalizeOAuth_ResultSet *results = [[[TMBGitHub_OAuth_FinalizeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinalizeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_OAuth_FinalizeOAuth_Inputs*)newInputSet {
		return [[[TMBGitHub_OAuth_FinalizeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListYourIssues Choreo.
 */
@implementation TMBGitHub_IssuesAPI_Issues_ListYourIssues_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Direction input for this Choreo.
	*(optional, string) The direction of the sort order. Valid values are: asc or desc (the default).
	 */
	-(void)setDirection:(NSString*)Direction {
		[super setInput:@"Direction" toValue:Direction];
	}

	/*!
	 * Set the value of the Filter input for this Choreo.
	*(optional, string) Filters issues using one of the following strings: assigned (the default), created, mentioned, subscribed.
	 */
	-(void)setFilter:(NSString*)Filter {
		[super setInput:@"Filter" toValue:Filter];
	}

	/*!
	 * Set the value of the Labels input for this Choreo.
	*(optional, string) A comma separated list of label names (i.e. bug, ui, etc).
	 */
	-(void)setLabels:(NSString*)Labels {
		[super setInput:@"Labels" toValue:Labels];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the Since input for this Choreo.
	*(optional, date) A timestamp in ISO 8601 format (YYYY-MM-DDTHH:MM:SSZ). Returns issues since this date.
	 */
	-(void)setSince:(NSString*)Since {
		[super setInput:@"Since" toValue:Since];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Indicates how the issues will be sorted in the response. Valid sort options are: created (the default), updated, comments.
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the State input for this Choreo.
	*(optional, string) Returns issues with a particular state: open (the default) or closed.
	 */
	-(void)setState:(NSString*)State {
		[super setInput:@"State" toValue:State];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListYourIssues Choreo.
 */
@implementation TMBGitHub_IssuesAPI_Issues_ListYourIssues_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Lists all issues associated with the provided access token.
 */
@implementation TMBGitHub_IssuesAPI_Issues_ListYourIssues

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_IssuesAPI_Issues_ListYourIssues Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/IssuesAPI/Issues/ListYourIssues"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_IssuesAPI_Issues_ListYourIssues_ResultSet *results = [[[TMBGitHub_IssuesAPI_Issues_ListYourIssues_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListYourIssues Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_IssuesAPI_Issues_ListYourIssues_Inputs*)newInputSet {
		return [[[TMBGitHub_IssuesAPI_Issues_ListYourIssues_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@implementation TMBGitHub_OAuth_InitializeOAuth_Inputs

	/*!
	 * Set the value of the AccountName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAccountName:(NSString*)AccountName {
		[super setInput:@"AccountName" toValue:AccountName];
	}

	/*!
	 * Set the value of the AppKeyName input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyName:(NSString*)AppKeyName {
		[super setInput:@"AppKeyName" toValue:AppKeyName];
	}

	/*!
	 * Set the value of the AppKeyValue input for this Choreo.
	*(optional, string) Deprecated (retained for backward compatibility only).
	 */
	-(void)setAppKeyValue:(NSString*)AppKeyValue {
		[super setInput:@"AppKeyValue" toValue:AppKeyValue];
	}

	/*!
	 * Set the value of the ClientID input for this Choreo.
	*(required, string) The Client ID provided by GitHub after registering your application.
	 */
	-(void)setClientID:(NSString*)ClientID {
		[super setInput:@"ClientID" toValue:ClientID];
	}

	/*!
	 * Set the value of the CustomCallbackID input for this Choreo.
	*(optional, string) A unique identifier that you can pass to eliminate the need to wait for a Temboo generated CallbackID. Callback identifiers may only contain numbers, letters, periods, and hyphens.
	 */
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID {
		[super setInput:@"CustomCallbackID" toValue:CustomCallbackID];
	}

	/*!
	 * Set the value of the ForwardingURL input for this Choreo.
	*(optional, string) The URL that Temboo will redirect your users to after they grant your application access.
	 */
	-(void)setForwardingURL:(NSString*)ForwardingURL {
		[super setInput:@"ForwardingURL" toValue:ForwardingURL];
	}

	/*!
	 * Set the value of the Scope input for this Choreo.
	*(optional, string) A comma separated list of scopes to associate with the access token. See description for more information. Ex.: user,repo,public_repo.
	 */
	-(void)setScope:(NSString*)Scope {
		[super setInput:@"Scope" toValue:Scope];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@implementation TMBGitHub_OAuth_InitializeOAuth_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "AuthorizationURL" output from an execution of this Choreo.
	 * @return - NSString* (string) The authorization URL that the application's user needs to go to in order to grant access to your application.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getAuthorizationURL {
		return [super getOutputByName:@"AuthorizationURL"];
	}

	/*!
	 * Retrieve the value of the "CallbackID" output from an execution of this Choreo.
	 * @return - NSString* (string) An ID used to retrieve the callback data that Temboo stores once your application's user authorizes.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getCallbackID {
		return [super getOutputByName:@"CallbackID"];
	}
	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@implementation TMBGitHub_OAuth_InitializeOAuth

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_OAuth_InitializeOAuth Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/OAuth/InitializeOAuth"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_OAuth_InitializeOAuth_ResultSet *results = [[[TMBGitHub_OAuth_InitializeOAuth_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the InitializeOAuth Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_OAuth_InitializeOAuth_Inputs*)newInputSet {
		return [[[TMBGitHub_OAuth_InitializeOAuth_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetTag Choreo.
 */
@implementation TMBGitHub_GitDataAPI_Tags_GetTag_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo associated with the tag to retrieve.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the SHA input for this Choreo.
	*(required, string) The SHA associated with the tag to retrieve.
	 */
	-(void)setSHA:(NSString*)SHA {
		[super setInput:@"SHA" toValue:SHA];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTag Choreo.
 */
@implementation TMBGitHub_GitDataAPI_Tags_GetTag_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a specified tag object.
 */
@implementation TMBGitHub_GitDataAPI_Tags_GetTag

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GitDataAPI_Tags_GetTag Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GitDataAPI/Tags/GetTag"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GitDataAPI_Tags_GetTag_ResultSet *results = [[[TMBGitHub_GitDataAPI_Tags_GetTag_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetTag Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GitDataAPI_Tags_GetTag_Inputs*)newInputSet {
		return [[[TMBGitHub_GitDataAPI_Tags_GetTag_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetForks Choreo.
 */
@implementation TMBGitHub_ReposAPI_Forks_GetForks_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the Sort input for this Choreo.
	*(optional, string) Valid values are: newest, oldest, or watchers. Default is "newest".
	 */
	-(void)setSort:(NSString*)Sort {
		[super setInput:@"Sort" toValue:Sort];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetForks Choreo.
 */
@implementation TMBGitHub_ReposAPI_Forks_GetForks_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves forks for a specified repository.
 */
@implementation TMBGitHub_ReposAPI_Forks_GetForks

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Forks_GetForks Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Forks/GetForks"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Forks_GetForks_ResultSet *results = [[[TMBGitHub_ReposAPI_Forks_GetForks_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetForks Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Forks_GetForks_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Forks_GetForks_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListBranches Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListBranches_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo to list branches for.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBranches Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListBranches_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of branches for the specified repository.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListBranches

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_ListBranches Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/ListBranches"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_ListBranches_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_ListBranches_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListBranches Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_ListBranches_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_ListBranches_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCommitComment Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_DeleteCommitComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The comment id.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo that the comment is associated with.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCommitComment Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_DeleteCommitComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified commit comment.
 */
@implementation TMBGitHub_ReposAPI_Comments_DeleteCommitComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Comments_DeleteCommitComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Comments/DeleteCommitComment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Comments_DeleteCommitComment_ResultSet *results = [[[TMBGitHub_ReposAPI_Comments_DeleteCommitComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteCommitComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Comments_DeleteCommitComment_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Comments_DeleteCommitComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteReference Choreo.
 */
@implementation TMBGitHub_GitDataAPI_References_DeleteReference_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Ref input for this Choreo.
	*(required, string) The name of the fully qualified reference to delete. Must be formatted as refs/heads/branch. Refs can be retrieved by running the GetAllReferences and parsing the value for "ref".
	 */
	-(void)setRef:(NSString*)Ref {
		[super setInput:@"Ref" toValue:Ref];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo associated with the reference that's being deleted.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteReference Choreo.
 */
@implementation TMBGitHub_GitDataAPI_References_DeleteReference_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified reference.
 */
@implementation TMBGitHub_GitDataAPI_References_DeleteReference

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GitDataAPI_References_DeleteReference Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GitDataAPI/References/DeleteReference"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GitDataAPI_References_DeleteReference_ResultSet *results = [[[TMBGitHub_GitDataAPI_References_DeleteReference_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteReference Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GitDataAPI_References_DeleteReference_Inputs*)newInputSet {
		return [[[TMBGitHub_GitDataAPI_References_DeleteReference_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListLanguages Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListLanguages_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo to list languages for.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListLanguages Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListLanguages_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of languages for the specified repository.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListLanguages

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_ListLanguages Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/ListLanguages"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_ListLanguages_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_ListLanguages_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListLanguages Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_ListLanguages_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_ListLanguages_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_DeleteGist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id for the gist you want to delete.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_DeleteGist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified gist.
 */
@implementation TMBGitHub_GistsAPI_Gists_DeleteGist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_DeleteGist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/DeleteGist"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_DeleteGist_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_DeleteGist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteGist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_DeleteGist_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_DeleteGist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateTag Choreo.
 */
@implementation TMBGitHub_GitDataAPI_Tags_CreateTag_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Message input for this Choreo.
	*(required, string) The tag message.
	 */
	-(void)setMessage:(NSString*)Message {
		[super setInput:@"Message" toValue:Message];
	}

	/*!
	 * Set the value of the Object input for this Choreo.
	*(required, string) The SHA of the git object that is being tagged.
	 */
	-(void)setObject:(NSString*)Object {
		[super setInput:@"Object" toValue:Object];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo associated with the tag being created.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the Tag input for this Choreo.
	*(required, string) A string to use for the tag (i.e. v0.0.1).
	 */
	-(void)setTag:(NSString*)Tag {
		[super setInput:@"Tag" toValue:Tag];
	}

	/*!
	 * Set the value of the TaggerDate input for this Choreo.
	*(required, date) A timestamp of when the object is tagged. Should be formatted like: 2011-06-17T14:53:35-07:00.
	 */
	-(void)setTaggerDate:(NSString*)TaggerDate {
		[super setInput:@"TaggerDate" toValue:TaggerDate];
	}

	/*!
	 * Set the value of the TaggerEmail input for this Choreo.
	*(required, string) The email of the author of the tag.
	 */
	-(void)setTaggerEmail:(NSString*)TaggerEmail {
		[super setInput:@"TaggerEmail" toValue:TaggerEmail];
	}

	/*!
	 * Set the value of the TaggerName input for this Choreo.
	*(required, string) The name of the author of the tag.
	 */
	-(void)setTaggerName:(NSString*)TaggerName {
		[super setInput:@"TaggerName" toValue:TaggerName];
	}

	/*!
	 * Set the value of the Type input for this Choreo.
	*(required, string) The type of object that is being tagged. Valid values are: commit, tree, or blob.
	 */
	-(void)setType:(NSString*)Type {
		[super setInput:@"Type" toValue:Type];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTag Choreo.
 */
@implementation TMBGitHub_GitDataAPI_Tags_CreateTag_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a tag object.
 */
@implementation TMBGitHub_GitDataAPI_Tags_CreateTag

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GitDataAPI_Tags_CreateTag Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GitDataAPI/Tags/CreateTag"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GitDataAPI_Tags_CreateTag_ResultSet *results = [[[TMBGitHub_GitDataAPI_Tags_CreateTag_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateTag Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GitDataAPI_Tags_CreateTag_Inputs*)newInputSet {
		return [[[TMBGitHub_GitDataAPI_Tags_CreateTag_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListContributors Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListContributors_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Anonymous input for this Choreo.
	*(optional, boolean) Flag indicating that the response should include anonymous contributors. Set to 1 or true to include anonymous contributors.
	 */
	-(void)setAnonymous:(NSString*)Anonymous {
		[super setInput:@"Anonymous" toValue:Anonymous];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo that has the contributors to retrieve.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListContributors Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListContributors_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of contributors for the specified repository.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListContributors

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_ListContributors Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/ListContributors"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_ListContributors_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_ListContributors_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListContributors Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_ListContributors_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_ListContributors_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListTags Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListTags_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo to list tags for.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTags Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListTags_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of tags for the specified repository.
 */
@implementation TMBGitHub_ReposAPI_Repos_ListTags

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_ListTags Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/ListTags"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_ListTags_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_ListTags_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListTags Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_ListTags_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_ListTags_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteComment Choreo.
 */
@implementation TMBGitHub_GistsAPI_Comments_DeleteComment_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id of the comment to delete.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteComment Choreo.
 */
@implementation TMBGitHub_GistsAPI_Comments_DeleteComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified comment.
 */
@implementation TMBGitHub_GistsAPI_Comments_DeleteComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Comments_DeleteComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Comments/DeleteComment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Comments_DeleteComment_ResultSet *results = [[[TMBGitHub_GistsAPI_Comments_DeleteComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Comments_DeleteComment_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Comments_DeleteComment_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListStarredGists Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListStarredGists_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListStarredGists Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListStarredGists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of starred gists for the authenticated user.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListStarredGists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_ListStarredGists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/ListStarredGists"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_ListStarredGists_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_ListStarredGists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListStarredGists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_ListStarredGists_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_ListStarredGists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the RemoveCollaborator Choreo.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Collaborator input for this Choreo.
	*(required, string) The username of the collaborator to remove.
	 */
	-(void)setCollaborator:(NSString*)Collaborator {
		[super setInput:@"Collaborator" toValue:Collaborator];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo that the collaborator will be removed from.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveCollaborator Choreo.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Removes a collaborator from a specified repository.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Collaborators/RemoveCollaborator"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_ResultSet *results = [[[TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the RemoveCollaborator Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRepo Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_DeleteRepo_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo to delete.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRepo Choreo.
 */
@implementation TMBGitHub_ReposAPI_Repos_DeleteRepo_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Deletes a specified repository.
 */
@implementation TMBGitHub_ReposAPI_Repos_DeleteRepo

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Repos_DeleteRepo Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Repos/DeleteRepo"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Repos_DeleteRepo_ResultSet *results = [[[TMBGitHub_ReposAPI_Repos_DeleteRepo_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DeleteRepo Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Repos_DeleteRepo_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Repos_DeleteRepo_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCollaborators Choreo.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_ListCollaborators_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo that has the collaborators to retrieve.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCollaborators Choreo.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_ListCollaborators_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of collaborators for the specified repository.
 */
@implementation TMBGitHub_ReposAPI_Collaborators_ListCollaborators

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Collaborators_ListCollaborators Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Collaborators/ListCollaborators"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Collaborators_ListCollaborators_ResultSet *results = [[[TMBGitHub_ReposAPI_Collaborators_ListCollaborators_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCollaborators Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Collaborators_ListCollaborators_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Collaborators_ListCollaborators_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicGists Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListPublicGists_Inputs

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicGists Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListPublicGists_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of all public gists.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListPublicGists

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_ListPublicGists Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/ListPublicGists"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_ListPublicGists_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_ListPublicGists_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListPublicGists Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_ListPublicGists_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_ListPublicGists_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetArchive Choreo.
 */
@implementation TMBGitHub_ReposAPI_Contents_GetArchive_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Path input for this Choreo.
	*(optional, string) The content path.
	 */
	-(void)setPath:(NSString*)Path {
		[super setInput:@"Path" toValue:Path];
	}

	/*!
	 * Set the value of the Ref input for this Choreo.
	*(optional, string) The name of the commit, branch, or tag. Defaults to "master".
	 */
	-(void)setRef:(NSString*)Ref {
		[super setInput:@"Ref" toValue:Ref];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetArchive Choreo.
 */
@implementation TMBGitHub_ReposAPI_Contents_GetArchive_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns the contents of any file or directory in a repository.
 */
@implementation TMBGitHub_ReposAPI_Contents_GetArchive

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Contents_GetArchive Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Contents/GetArchive"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Contents_GetArchive_ResultSet *results = [[[TMBGitHub_ReposAPI_Contents_GetArchive_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetArchive Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Contents_GetArchive_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Contents_GetArchive_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListCommitComments Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_ListCommitComments_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the SHA input for this Choreo.
	*(required, string) The SHA of the commit.
	 */
	-(void)setSHA:(NSString*)SHA {
		[super setInput:@"SHA" toValue:SHA];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCommitComments Choreo.
 */
@implementation TMBGitHub_ReposAPI_Comments_ListCommitComments_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a list of comments for a single commit.
 */
@implementation TMBGitHub_ReposAPI_Comments_ListCommitComments

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Comments_ListCommitComments Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Comments/ListCommitComments"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Comments_ListCommitComments_ResultSet *results = [[[TMBGitHub_ReposAPI_Comments_ListCommitComments_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListCommitComments Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Comments_ListCommitComments_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Comments_ListCommitComments_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StarGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_StarGist_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id for the gist you want to star.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StarGist Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_StarGist_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Stars a gist using a specified gist id.
 */
@implementation TMBGitHub_GistsAPI_Gists_StarGist

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_StarGist Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/StarGist"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_StarGist_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_StarGist_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StarGist Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_StarGist_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_StarGist_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CompareCommits Choreo.
 */
@implementation TMBGitHub_ReposAPI_Commits_CompareCommits_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Base input for this Choreo.
	*(required, string) The base commit (i.e. "master").
	 */
	-(void)setBase:(NSString*)Base {
		[super setInput:@"Base" toValue:Base];
	}

	/*!
	 * Set the value of the Head input for this Choreo.
	*(required, string) The head commit.
	 */
	-(void)setHead:(NSString*)Head {
		[super setInput:@"Head" toValue:Head];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repository.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompareCommits Choreo.
 */
@implementation TMBGitHub_ReposAPI_Commits_CompareCommits_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a comparison between two commits.
 */
@implementation TMBGitHub_ReposAPI_Commits_CompareCommits

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_ReposAPI_Commits_CompareCommits Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/ReposAPI/Commits/CompareCommits"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_ReposAPI_Commits_CompareCommits_ResultSet *results = [[[TMBGitHub_ReposAPI_Commits_CompareCommits_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CompareCommits Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_ReposAPI_Commits_CompareCommits_Inputs*)newInputSet {
		return [[[TMBGitHub_ReposAPI_Commits_CompareCommits_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the CreateReference Choreo.
 */
@implementation TMBGitHub_GitDataAPI_References_CreateReference_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(required, string) The Access Token retrieved during the OAuth process.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Ref input for this Choreo.
	*(required, string) The name of the fully qualified reference. Must be formatted as refs/heads/branch. Refs can be retrieved by running the GetAllReferences and parsing the value for "ref".
	 */
	-(void)setRef:(NSString*)Ref {
		[super setInput:@"Ref" toValue:Ref];
	}

	/*!
	 * Set the value of the Repo input for this Choreo.
	*(required, string) The name of the repo associated with the reference being created.
	 */
	-(void)setRepo:(NSString*)Repo {
		[super setInput:@"Repo" toValue:Repo];
	}

	/*!
	 * Set the value of the SHA input for this Choreo.
	*(required, string) The SHA1 value to set this reference to.
	 */
	-(void)setSHA:(NSString*)SHA {
		[super setInput:@"SHA" toValue:SHA];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The GitHub username.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateReference Choreo.
 */
@implementation TMBGitHub_GitDataAPI_References_CreateReference_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Creates a reference on the system.
 */
@implementation TMBGitHub_GitDataAPI_References_CreateReference

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GitDataAPI_References_CreateReference Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GitDataAPI/References/CreateReference"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GitDataAPI_References_CreateReference_ResultSet *results = [[[TMBGitHub_GitDataAPI_References_CreateReference_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the CreateReference Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GitDataAPI_References_CreateReference_Inputs*)newInputSet {
		return [[[TMBGitHub_GitDataAPI_References_CreateReference_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the ListGistsByUser Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListGistsByUser_Inputs

	/*!
	 * Set the value of the AccessToken input for this Choreo.
	*(conditional, string) The Access Token retrieved during the OAuth process. Required when accessing a protected resource.
	 */
	-(void)setAccessToken:(NSString*)AccessToken {
		[super setInput:@"AccessToken" toValue:AccessToken];
	}

	/*!
	 * Set the value of the Page input for this Choreo.
	*(optional, integer) Indicates the page index that you want to retrieve. This is used to page through many results. Defaults to 1.
	 */
	-(void)setPage:(NSString*)Page {
		[super setInput:@"Page" toValue:Page];
	}

	/*!
	 * Set the value of the User input for this Choreo.
	*(required, string) The username for which you want to retrieve a list of gists.
	 */
	-(void)setUser:(NSString*)User {
		[super setInput:@"User" toValue:User];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGistsByUser Choreo.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListGistsByUser_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "LastPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the last available page.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLastPage {
		return [super getOutputByName:@"LastPage"];
	}

	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "NextPage" output from an execution of this Choreo.
	 * @return - NSString* (integer) If multiple pages are available for the response, this contains the next page that you should retrieve.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getNextPage {
		return [super getOutputByName:@"NextPage"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of gists for a given user.
 */
@implementation TMBGitHub_GistsAPI_Gists_ListGistsByUser

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Gists_ListGistsByUser Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Gists/ListGistsByUser"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Gists_ListGistsByUser_ResultSet *results = [[[TMBGitHub_GistsAPI_Gists_ListGistsByUser_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the ListGistsByUser Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Gists_ListGistsByUser_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Gists_ListGistsByUser_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GetComment Choreo.
 */
@implementation TMBGitHub_GistsAPI_Comments_GetComment_Inputs

	/*!
	 * Set the value of the ID input for this Choreo.
	*(required, string) The id of the comment to retrieve.
	 */
	-(void)setID:(NSString*)ID {
		[super setInput:@"ID" toValue:ID];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComment Choreo.
 */
@implementation TMBGitHub_GistsAPI_Comments_GetComment_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Limit" output from an execution of this Choreo.
	 * @return - NSString* (integer) The available rate limit for your account. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getLimit {
		return [super getOutputByName:@"Limit"];
	}

	/*!
	 * Retrieve the value of the "Remaining" output from an execution of this Choreo.
	 * @return - NSString* (integer) The remaining number of API requests available to you. This is returned in the GitHub response header.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getRemaining {
		return [super getOutputByName:@"Remaining"];
	}

	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* (json) The response from GitHub.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Retrieves a single comment.
 */
@implementation TMBGitHub_GistsAPI_Comments_GetComment

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBGitHub_GistsAPI_Comments_GetComment Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/GitHub/GistsAPI/Comments/GetComment"] autorelease];
		return [super initWithSession:session andUri:uri];
	}	
	
	/**
	 * TMBChoreographyDelegate protocol method - called when this Choreo's execution
	 * completes successfully. This class in turn calls the same function on the object
	 * (delegate) which was specified as when the choreo execution was initiated.
	 *
	 * @param response The execution response from the Temboo server
	 *
	 * @return void
	 */
	-(void)choreographyDidFinishExecuting:(NSDictionary*)response {
		TMBGitHub_GistsAPI_Comments_GetComment_ResultSet *results = [[[TMBGitHub_GistsAPI_Comments_GetComment_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GetComment Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBGitHub_GistsAPI_Comments_GetComment_Inputs*)newInputSet {
		return [[[TMBGitHub_GistsAPI_Comments_GetComment_Inputs alloc] init] autorelease];
	}
@end
	