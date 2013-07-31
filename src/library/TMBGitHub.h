/*!
 * @header Temboo iOS SDK GitHub classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBGitHub.ReposAPI.Contents.GetContents Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetContents Choreo.
 */
@interface TMBGitHub_ReposAPI_Contents_GetContents_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setArchiveFormat:(NSString*)ArchiveFormat;
	-(void)setRef:(NSString*)Ref;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetContents Choreo.
 */
@interface TMBGitHub_ReposAPI_Contents_GetContents_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a tarball or zipball archive for a repository. 
 */
@interface TMBGitHub_ReposAPI_Contents_GetContents : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Contents_GetContents_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Contents_GetContents Choreo */


/*! group TMBGitHub.GistsAPI.Gists.UnstarGist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the UnstarGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_UnstarGist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the UnstarGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_UnstarGist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Unstars a gist using a specified gist id.
 */
@interface TMBGitHub_GistsAPI_Gists_UnstarGist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_UnstarGist_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_UnstarGist Choreo */


/*! group TMBGitHub.GitDataAPI.Commits.GetCommit Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCommit Choreo.
 */
@interface TMBGitHub_GitDataAPI_Commits_GetCommit_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSHA:(NSString*)SHA;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCommit Choreo.
 */
@interface TMBGitHub_GitDataAPI_Commits_GetCommit_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a specified commit from a repo.
 */
@interface TMBGitHub_GitDataAPI_Commits_GetCommit : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GitDataAPI_Commits_GetCommit_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GitDataAPI.Commits_GetCommit Choreo */


/*! group TMBGitHub.ReposAPI.Commits.GetCommit Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCommit Choreo.
 */
@interface TMBGitHub_ReposAPI_Commits_GetCommit_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSHA:(NSString*)SHA;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCommit Choreo.
 */
@interface TMBGitHub_ReposAPI_Commits_GetCommit_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an individual commit.
 */
@interface TMBGitHub_ReposAPI_Commits_GetCommit : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Commits_GetCommit_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Commits_GetCommit Choreo */


/*! group TMBGitHub.ReposAPI.Comments.GetCommitComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCommitComment Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_GetCommitComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCommitComment Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_GetCommitComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an individual commit comment.
 */
@interface TMBGitHub_ReposAPI_Comments_GetCommitComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Comments_GetCommitComment_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Comments_GetCommitComment Choreo */


/*! group TMBGitHub.GitDataAPI.References.GetAllReferences Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetAllReferences Choreo.
 */
@interface TMBGitHub_GitDataAPI_References_GetAllReferences_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetAllReferences Choreo.
 */
@interface TMBGitHub_GitDataAPI_References_GetAllReferences_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an array of all the references on the system, including things like notes and stashes if they exist on the server.
 */
@interface TMBGitHub_GitDataAPI_References_GetAllReferences : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GitDataAPI_References_GetAllReferences_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GitDataAPI.References_GetAllReferences Choreo */


/*! group TMBGitHub.IssuesAPI.Issues.ListIssuesForRepo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListIssuesForRepo Choreo.
 */
@interface TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAssignee:(NSString*)Assignee;
	-(void)setDirection:(NSString*)Direction;
	-(void)setLabels:(NSString*)Labels;
	-(void)setMentioned:(NSString*)Mentioned;
	-(void)setMilestone:(NSString*)Milestone;
	-(void)setPage:(NSString*)Page;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSince:(NSString*)Since;
	-(void)setSort:(NSString*)Sort;
	-(void)setState:(NSString*)State;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListIssuesForRepo Choreo.
 */
@interface TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * List all issues for a specified repository.
 */
@interface TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_IssuesAPI_Issues_ListIssuesForRepo_Inputs*)newInputSet;
@end

/*! group TMBGitHub.IssuesAPI.Issues_ListIssuesForRepo Choreo */


/*! group TMBGitHub.ReposAPI.Commits.ListCommits Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCommits Choreo.
 */
@interface TMBGitHub_ReposAPI_Commits_ListCommits_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPath:(NSString*)Path;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSHA:(NSString*)SHA;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCommits Choreo.
 */
@interface TMBGitHub_ReposAPI_Commits_ListCommits_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Lists commits for a specified repository.
 */
@interface TMBGitHub_ReposAPI_Commits_ListCommits : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Commits_ListCommits_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Commits_ListCommits Choreo */


/*! group TMBGitHub.ReposAPI.Forks.CreateFork Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateFork Choreo.
 */
@interface TMBGitHub_ReposAPI_Forks_CreateFork_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setOrg:(NSString*)Org;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateFork Choreo.
 */
@interface TMBGitHub_ReposAPI_Forks_CreateFork_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a fork for the authenticated user.
 */
@interface TMBGitHub_ReposAPI_Forks_CreateFork : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Forks_CreateFork_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Forks_CreateFork Choreo */


/*! group TMBGitHub.ReposAPI.Collaborators.AddCollaborator Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the AddCollaborator Choreo.
 */
@interface TMBGitHub_ReposAPI_Collaborators_AddCollaborator_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCollaborator:(NSString*)Collaborator;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the AddCollaborator Choreo.
 */
@interface TMBGitHub_ReposAPI_Collaborators_AddCollaborator_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Adds a collaborator to a specified repository.
 */
@interface TMBGitHub_ReposAPI_Collaborators_AddCollaborator : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Collaborators_AddCollaborator_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Collaborators_AddCollaborator Choreo */


/*! group TMBGitHub.GitDataAPI.References.GetReference Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReference Choreo.
 */
@interface TMBGitHub_GitDataAPI_References_GetReference_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRef:(NSString*)Ref;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReference Choreo.
 */
@interface TMBGitHub_GitDataAPI_References_GetReference_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves an individual reference on the system, including things like notes and statshes if they exist on the server.
 */
@interface TMBGitHub_GitDataAPI_References_GetReference : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GitDataAPI_References_GetReference_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GitDataAPI.References_GetReference Choreo */


/*! group TMBGitHub.GistsAPI.Gists.ListGistsForAuthenticatedUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGistsForAuthenticatedUser Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGistsForAuthenticatedUser Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of gists for the authenticated user or if called anonymously, return all public gists.
 */
@interface TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_ListGistsForAuthenticatedUser_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_ListGistsForAuthenticatedUser Choreo */


/*! group TMBGitHub.ReposAPI.Repos.ListYourRepos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListYourRepos Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListYourRepos_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDirection:(NSString*)Direction;
	-(void)setPage:(NSString*)Page;
	-(void)setSort:(NSString*)Sort;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListYourRepos Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListYourRepos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of repositories for the authenticated user.
 */
@interface TMBGitHub_ReposAPI_Repos_ListYourRepos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_ListYourRepos_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_ListYourRepos Choreo */


/*! group TMBGitHub.GistsAPI.Gists.CreateGist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_CreateGist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDescription:(NSString*)Description;
	-(void)setFileContents:(NSString*)FileContents;
	-(void)setFileName:(NSString*)FileName;
	-(void)setPublic:(NSString*)Public;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_CreateGist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a gist.
 */
@interface TMBGitHub_GistsAPI_Gists_CreateGist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_CreateGist_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_CreateGist Choreo */


/*! group TMBGitHub.ReposAPI.Repos.ListReposByOrg Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListReposByOrg Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListReposByOrg_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setOrg:(NSString*)Org;
	-(void)setPage:(NSString*)Page;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListReposByOrg Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListReposByOrg_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieces a list of repositories for the specified organization.
 */
@interface TMBGitHub_ReposAPI_Repos_ListReposByOrg : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_ListReposByOrg_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_ListReposByOrg Choreo */


/*! group TMBGitHub.ReposAPI.Repos.GetRepo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetRepo Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_GetRepo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetRepo Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_GetRepo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a specified repository.
 */
@interface TMBGitHub_ReposAPI_Repos_GetRepo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_GetRepo_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_GetRepo Choreo */


/*! group TMBGitHub.GistsAPI.Gists.GetGist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_GetGist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_GetGist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Returns an individual gist with a given id.
 */
@interface TMBGitHub_GistsAPI_Gists_GetGist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_GetGist_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_GetGist Choreo */


/*! group TMBGitHub.ReposAPI.Contents.GetReadMe Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetReadMe Choreo.
 */
@interface TMBGitHub_ReposAPI_Contents_GetReadMe_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRef:(NSString*)Ref;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetReadMe Choreo.
 */
@interface TMBGitHub_ReposAPI_Contents_GetReadMe_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves the README file for a repository.
 */
@interface TMBGitHub_ReposAPI_Contents_GetReadMe : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Contents_GetReadMe_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Contents_GetReadMe Choreo */


/*! group TMBGitHub.ReposAPI.Repos.ListTeams Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTeams Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListTeams_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTeams Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListTeams_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of teams for the specified repository.
 */
@interface TMBGitHub_ReposAPI_Repos_ListTeams : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_ListTeams_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_ListTeams Choreo */


/*! group TMBGitHub.ReposAPI.Comments.CreateCommitComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateCommitComment Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_CreateCommitComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBody:(NSString*)Body;
	-(void)setLine:(NSString*)Line;
	-(void)setPath:(NSString*)Path;
	-(void)setPosition:(NSString*)Position;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSHA:(NSString*)SHA;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateCommitComment Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_CreateCommitComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a comment on a specified commit.
 */
@interface TMBGitHub_ReposAPI_Comments_CreateCommitComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Comments_CreateCommitComment_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Comments_CreateCommitComment Choreo */


/*! group TMBGitHub.GistsAPI.Gists.CheckGist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CheckGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_CheckGist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CheckGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_CheckGist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Checks whether or not a gist is starred.
 */
@interface TMBGitHub_GistsAPI_Gists_CheckGist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_CheckGist_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_CheckGist Choreo */


/*! group TMBGitHub.ReposAPI.Repos.CreateRepo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateRepo Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_CreateRepo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDescription:(NSString*)Description;
	-(void)setHasDownloads:(NSString*)HasDownloads;
	-(void)setHasIssues:(NSString*)HasIssues;
	-(void)setHasWiki:(NSString*)HasWiki;
	-(void)setHomepage:(NSString*)Homepage;
	-(void)setName:(NSString*)Name;
	-(void)setPrivate:(NSString*)Private;
	-(void)setTeamID:(NSString*)TeamID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateRepo Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_CreateRepo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a new repository for the authenticated user.
 */
@interface TMBGitHub_ReposAPI_Repos_CreateRepo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_CreateRepo_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_CreateRepo Choreo */


/*! group TMBGitHub.ReposAPI.Collaborators.GetCollaboratorStatus Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetCollaboratorStatus Choreo.
 */
@interface TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCollaborator:(NSString*)Collaborator;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetCollaboratorStatus Choreo.
 */
@interface TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Checks to see if the provided user is a collaborator.
 */
@interface TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Collaborators_GetCollaboratorStatus_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Collaborators_GetCollaboratorStatus Choreo */


/*! group TMBGitHub.GistsAPI.Comments.ListComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListComments Choreo.
 */
@interface TMBGitHub_GistsAPI_Comments_ListComments_Inputs : TMBChoreographyInputSet
	-(void)setID:(NSString*)ID;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListComments Choreo.
 */
@interface TMBGitHub_GistsAPI_Comments_ListComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves comments for a specified gist.
 */
@interface TMBGitHub_GistsAPI_Comments_ListComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Comments_ListComments_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Comments_ListComments Choreo */


/*! group TMBGitHub.ReposAPI.Repos.ListUserRepos Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListUserRepos Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListUserRepos_Inputs : TMBChoreographyInputSet
	-(void)setDirection:(NSString*)Direction;
	-(void)setPage:(NSString*)Page;
	-(void)setSort:(NSString*)Sort;
	-(void)setType:(NSString*)Type;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListUserRepos Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListUserRepos_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of public repositories for the specified user.
 */
@interface TMBGitHub_ReposAPI_Repos_ListUserRepos : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_ListUserRepos_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_ListUserRepos Choreo */


/*! group TMBGitHub.ReposAPI.Comments.ListCommentsForRepo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCommentsForRepo Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCommentsForRepo Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of comments for the specified repository.
 */
@interface TMBGitHub_ReposAPI_Comments_ListCommentsForRepo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Comments_ListCommentsForRepo_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Comments_ListCommentsForRepo Choreo */


/*! group TMBGitHub.ReposAPI.Repos.GetBranch Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetBranch Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_GetBranch_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBranch:(NSString*)Branch;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetBranch Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_GetBranch_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves information for a specified branch.
 */
@interface TMBGitHub_ReposAPI_Repos_GetBranch : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_GetBranch_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_GetBranch Choreo */


/*! group TMBGitHub.GistsAPI.Comments.CreateComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateComment Choreo.
 */
@interface TMBGitHub_GistsAPI_Comments_CreateComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBody:(NSString*)Body;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateComment Choreo.
 */
@interface TMBGitHub_GistsAPI_Comments_CreateComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a comment for a specified gist.
 */
@interface TMBGitHub_GistsAPI_Comments_CreateComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Comments_CreateComment_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Comments_CreateComment Choreo */


/*! group TMBGitHub.OAuth.FinalizeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinalizeOAuth Choreo.
 */
@interface TMBGitHub_OAuth_FinalizeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setCallbackID:(NSString*)CallbackID;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setClientSecret:(NSString*)ClientSecret;
	-(void)setTimeout:(NSString*)Timeout;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinalizeOAuth Choreo.
 */
@interface TMBGitHub_OAuth_FinalizeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAccessToken;	
@end

/*!
 * Completes the OAuth process by retrieving a GitHub access token for a user, after they have visited the authorization URL returned by the InitializeOAuth Choreo and clicked "allow."
 */
@interface TMBGitHub_OAuth_FinalizeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_OAuth_FinalizeOAuth_Inputs*)newInputSet;
@end

/*! group TMBGitHub.OAuth_FinalizeOAuth Choreo */


/*! group TMBGitHub.IssuesAPI.Issues.ListYourIssues Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListYourIssues Choreo.
 */
@interface TMBGitHub_IssuesAPI_Issues_ListYourIssues_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setDirection:(NSString*)Direction;
	-(void)setFilter:(NSString*)Filter;
	-(void)setLabels:(NSString*)Labels;
	-(void)setPage:(NSString*)Page;
	-(void)setSince:(NSString*)Since;
	-(void)setSort:(NSString*)Sort;
	-(void)setState:(NSString*)State;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListYourIssues Choreo.
 */
@interface TMBGitHub_IssuesAPI_Issues_ListYourIssues_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Lists all issues associated with the provided access token.
 */
@interface TMBGitHub_IssuesAPI_Issues_ListYourIssues : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_IssuesAPI_Issues_ListYourIssues_Inputs*)newInputSet;
@end

/*! group TMBGitHub.IssuesAPI.Issues_ListYourIssues Choreo */


/*! group TMBGitHub.OAuth.InitializeOAuth Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the InitializeOAuth Choreo.
 */
@interface TMBGitHub_OAuth_InitializeOAuth_Inputs : TMBChoreographyInputSet
	-(void)setAccountName:(NSString*)AccountName;
	-(void)setAppKeyName:(NSString*)AppKeyName;
	-(void)setAppKeyValue:(NSString*)AppKeyValue;
	-(void)setClientID:(NSString*)ClientID;
	-(void)setCustomCallbackID:(NSString*)CustomCallbackID;
	-(void)setForwardingURL:(NSString*)ForwardingURL;
	-(void)setScope:(NSString*)Scope;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the InitializeOAuth Choreo.
 */
@interface TMBGitHub_OAuth_InitializeOAuth_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getAuthorizationURL;
	-(NSString*)getCallbackID;	
@end

/*!
 * Generates an authorization URL that an application can use to complete the first step in the OAuth process.
 */
@interface TMBGitHub_OAuth_InitializeOAuth : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_OAuth_InitializeOAuth_Inputs*)newInputSet;
@end

/*! group TMBGitHub.OAuth_InitializeOAuth Choreo */


/*! group TMBGitHub.GitDataAPI.Tags.GetTag Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetTag Choreo.
 */
@interface TMBGitHub_GitDataAPI_Tags_GetTag_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSHA:(NSString*)SHA;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetTag Choreo.
 */
@interface TMBGitHub_GitDataAPI_Tags_GetTag_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a specified tag object.
 */
@interface TMBGitHub_GitDataAPI_Tags_GetTag : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GitDataAPI_Tags_GetTag_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GitDataAPI.Tags_GetTag Choreo */


/*! group TMBGitHub.ReposAPI.Forks.GetForks Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetForks Choreo.
 */
@interface TMBGitHub_ReposAPI_Forks_GetForks_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSort:(NSString*)Sort;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetForks Choreo.
 */
@interface TMBGitHub_ReposAPI_Forks_GetForks_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves forks for a specified repository.
 */
@interface TMBGitHub_ReposAPI_Forks_GetForks : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Forks_GetForks_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Forks_GetForks Choreo */


/*! group TMBGitHub.ReposAPI.Repos.ListBranches Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListBranches Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListBranches_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListBranches Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListBranches_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of branches for the specified repository.
 */
@interface TMBGitHub_ReposAPI_Repos_ListBranches : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_ListBranches_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_ListBranches Choreo */


/*! group TMBGitHub.ReposAPI.Comments.DeleteCommitComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteCommitComment Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_DeleteCommitComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteCommitComment Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_DeleteCommitComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified commit comment.
 */
@interface TMBGitHub_ReposAPI_Comments_DeleteCommitComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Comments_DeleteCommitComment_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Comments_DeleteCommitComment Choreo */


/*! group TMBGitHub.GitDataAPI.References.DeleteReference Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteReference Choreo.
 */
@interface TMBGitHub_GitDataAPI_References_DeleteReference_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRef:(NSString*)Ref;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteReference Choreo.
 */
@interface TMBGitHub_GitDataAPI_References_DeleteReference_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified reference.
 */
@interface TMBGitHub_GitDataAPI_References_DeleteReference : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GitDataAPI_References_DeleteReference_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GitDataAPI.References_DeleteReference Choreo */


/*! group TMBGitHub.ReposAPI.Repos.ListLanguages Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListLanguages Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListLanguages_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListLanguages Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListLanguages_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of languages for the specified repository.
 */
@interface TMBGitHub_ReposAPI_Repos_ListLanguages : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_ListLanguages_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_ListLanguages Choreo */


/*! group TMBGitHub.GistsAPI.Gists.DeleteGist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_DeleteGist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_DeleteGist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified gist.
 */
@interface TMBGitHub_GistsAPI_Gists_DeleteGist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_DeleteGist_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_DeleteGist Choreo */


/*! group TMBGitHub.GitDataAPI.Tags.CreateTag Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateTag Choreo.
 */
@interface TMBGitHub_GitDataAPI_Tags_CreateTag_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setMessage:(NSString*)Message;
	-(void)setObject:(NSString*)Object;
	-(void)setRepo:(NSString*)Repo;
	-(void)setTag:(NSString*)Tag;
	-(void)setTaggerDate:(NSString*)TaggerDate;
	-(void)setTaggerEmail:(NSString*)TaggerEmail;
	-(void)setTaggerName:(NSString*)TaggerName;
	-(void)setType:(NSString*)Type;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateTag Choreo.
 */
@interface TMBGitHub_GitDataAPI_Tags_CreateTag_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a tag object.
 */
@interface TMBGitHub_GitDataAPI_Tags_CreateTag : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GitDataAPI_Tags_CreateTag_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GitDataAPI.Tags_CreateTag Choreo */


/*! group TMBGitHub.ReposAPI.Repos.ListContributors Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListContributors Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListContributors_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setAnonymous:(NSString*)Anonymous;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListContributors Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListContributors_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of contributors for the specified repository.
 */
@interface TMBGitHub_ReposAPI_Repos_ListContributors : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_ListContributors_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_ListContributors Choreo */


/*! group TMBGitHub.ReposAPI.Repos.ListTags Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListTags Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListTags_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListTags Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_ListTags_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of tags for the specified repository.
 */
@interface TMBGitHub_ReposAPI_Repos_ListTags : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_ListTags_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_ListTags Choreo */


/*! group TMBGitHub.GistsAPI.Comments.DeleteComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteComment Choreo.
 */
@interface TMBGitHub_GistsAPI_Comments_DeleteComment_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteComment Choreo.
 */
@interface TMBGitHub_GistsAPI_Comments_DeleteComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified comment.
 */
@interface TMBGitHub_GistsAPI_Comments_DeleteComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Comments_DeleteComment_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Comments_DeleteComment Choreo */


/*! group TMBGitHub.GistsAPI.Gists.ListStarredGists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListStarredGists Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_ListStarredGists_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListStarredGists Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_ListStarredGists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of starred gists for the authenticated user.
 */
@interface TMBGitHub_GistsAPI_Gists_ListStarredGists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_ListStarredGists_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_ListStarredGists Choreo */


/*! group TMBGitHub.ReposAPI.Collaborators.RemoveCollaborator Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the RemoveCollaborator Choreo.
 */
@interface TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setCollaborator:(NSString*)Collaborator;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the RemoveCollaborator Choreo.
 */
@interface TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Removes a collaborator from a specified repository.
 */
@interface TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Collaborators_RemoveCollaborator_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Collaborators_RemoveCollaborator Choreo */


/*! group TMBGitHub.ReposAPI.Repos.DeleteRepo Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DeleteRepo Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_DeleteRepo_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DeleteRepo Choreo.
 */
@interface TMBGitHub_ReposAPI_Repos_DeleteRepo_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Deletes a specified repository.
 */
@interface TMBGitHub_ReposAPI_Repos_DeleteRepo : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Repos_DeleteRepo_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Repos_DeleteRepo Choreo */


/*! group TMBGitHub.ReposAPI.Collaborators.ListCollaborators Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCollaborators Choreo.
 */
@interface TMBGitHub_ReposAPI_Collaborators_ListCollaborators_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCollaborators Choreo.
 */
@interface TMBGitHub_ReposAPI_Collaborators_ListCollaborators_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of collaborators for the specified repository.
 */
@interface TMBGitHub_ReposAPI_Collaborators_ListCollaborators : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Collaborators_ListCollaborators_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Collaborators_ListCollaborators Choreo */


/*! group TMBGitHub.GistsAPI.Gists.ListPublicGists Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListPublicGists Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_ListPublicGists_Inputs : TMBChoreographyInputSet
	-(void)setPage:(NSString*)Page;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListPublicGists Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_ListPublicGists_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of all public gists.
 */
@interface TMBGitHub_GistsAPI_Gists_ListPublicGists : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_ListPublicGists_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_ListPublicGists Choreo */


/*! group TMBGitHub.ReposAPI.Contents.GetArchive Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetArchive Choreo.
 */
@interface TMBGitHub_ReposAPI_Contents_GetArchive_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPath:(NSString*)Path;
	-(void)setRef:(NSString*)Ref;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetArchive Choreo.
 */
@interface TMBGitHub_ReposAPI_Contents_GetArchive_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Returns the contents of any file or directory in a repository.
 */
@interface TMBGitHub_ReposAPI_Contents_GetArchive : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Contents_GetArchive_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Contents_GetArchive Choreo */


/*! group TMBGitHub.ReposAPI.Comments.ListCommitComments Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListCommitComments Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_ListCommitComments_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSHA:(NSString*)SHA;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListCommitComments Choreo.
 */
@interface TMBGitHub_ReposAPI_Comments_ListCommitComments_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a list of comments for a single commit.
 */
@interface TMBGitHub_ReposAPI_Comments_ListCommitComments : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Comments_ListCommitComments_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Comments_ListCommitComments Choreo */


/*! group TMBGitHub.GistsAPI.Gists.StarGist Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StarGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_StarGist_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StarGist Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_StarGist_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Stars a gist using a specified gist id.
 */
@interface TMBGitHub_GistsAPI_Gists_StarGist : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_StarGist_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_StarGist Choreo */


/*! group TMBGitHub.ReposAPI.Commits.CompareCommits Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CompareCommits Choreo.
 */
@interface TMBGitHub_ReposAPI_Commits_CompareCommits_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setBase:(NSString*)Base;
	-(void)setHead:(NSString*)Head;
	-(void)setRepo:(NSString*)Repo;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CompareCommits Choreo.
 */
@interface TMBGitHub_ReposAPI_Commits_CompareCommits_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a comparison between two commits.
 */
@interface TMBGitHub_ReposAPI_Commits_CompareCommits : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_ReposAPI_Commits_CompareCommits_Inputs*)newInputSet;
@end

/*! group TMBGitHub.ReposAPI.Commits_CompareCommits Choreo */


/*! group TMBGitHub.GitDataAPI.References.CreateReference Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the CreateReference Choreo.
 */
@interface TMBGitHub_GitDataAPI_References_CreateReference_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setRef:(NSString*)Ref;
	-(void)setRepo:(NSString*)Repo;
	-(void)setSHA:(NSString*)SHA;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the CreateReference Choreo.
 */
@interface TMBGitHub_GitDataAPI_References_CreateReference_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Creates a reference on the system.
 */
@interface TMBGitHub_GitDataAPI_References_CreateReference : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GitDataAPI_References_CreateReference_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GitDataAPI.References_CreateReference Choreo */


/*! group TMBGitHub.GistsAPI.Gists.ListGistsByUser Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the ListGistsByUser Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_ListGistsByUser_Inputs : TMBChoreographyInputSet
	-(void)setAccessToken:(NSString*)AccessToken;
	-(void)setPage:(NSString*)Page;
	-(void)setUser:(NSString*)User;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the ListGistsByUser Choreo.
 */
@interface TMBGitHub_GistsAPI_Gists_ListGistsByUser_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLastPage;
	-(NSString*)getLimit;
	-(NSString*)getNextPage;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of gists for a given user.
 */
@interface TMBGitHub_GistsAPI_Gists_ListGistsByUser : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Gists_ListGistsByUser_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Gists_ListGistsByUser Choreo */


/*! group TMBGitHub.GistsAPI.Comments.GetComment Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GetComment Choreo.
 */
@interface TMBGitHub_GistsAPI_Comments_GetComment_Inputs : TMBChoreographyInputSet
	-(void)setID:(NSString*)ID;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GetComment Choreo.
 */
@interface TMBGitHub_GistsAPI_Comments_GetComment_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getLimit;
	-(NSString*)getRemaining;
	-(NSString*)getResponse;	
@end

/*!
 * Retrieves a single comment.
 */
@interface TMBGitHub_GistsAPI_Comments_GetComment : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBGitHub_GistsAPI_Comments_GetComment_Inputs*)newInputSet;
@end

/*! group TMBGitHub.GistsAPI.Comments_GetComment Choreo */
