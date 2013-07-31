/*!
 * @TMBDeptOfEducation.m
 *
 * Execute Choreographies from the Temboo DeptOfEducation bundle.
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

#import "TMBDeptOfEducation.h"
#import "TMBChoreographyExecution.h"
#import "TMBTembooSession.h"
#import "TMBTembooUri.h"


/*!
 * Input object with appropriate setters for specifying arguments to the DegreesConferred Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_Inputs

	/*!
	 * Set the value of the InstitutionID input for this Choreo.
	*(optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
	 */
	-(void)setInstitutionID:(NSString*)InstitutionID {
		[super setInput:@"InstitutionID" toValue:InstitutionID];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) Limits the number of rows returned. Defaults to 20.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DegreesConferred Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Data.ed.gov.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns a list of all degrees conferred by a given institution, along with detailed demographic data for each degree awarded.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/CollegesAndUniversities/DegreesConferred"] autorelease];
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
		TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_ResultSet *results = [[[TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the DegreesConferred Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LookupSchool Choreo.
 */
@implementation TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_Inputs

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(required, string) Used to perform a full text search on the data set. For example, you can search for a school name or a school's unique ID.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) Limits the number of rows returned. Defaults to 20.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupSchool Choreo.
 */
@implementation TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Data.ed.gov.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search the U.S. Department of Education elementary and secondary school listings which includes general school information, demographic data, and location data.
 */
@implementation TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/ElementaryAndSecondary/LookupSchool"] autorelease];
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
		TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_ResultSet *results = [[[TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LookupSchool Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LookupMajors Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_Inputs

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(conditional, string) A keyword search term to lookup majors (i.e. Agriculture).
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the MajorID input for this Choreo.
	*(conditional, decimal) The unique id associated with a major to return (i.e. 01.0000). Note that these ids are also returned in the output of the DegreesConferred Choreo.
	 */
	-(void)setMajorID:(NSString*)MajorID {
		[super setInput:@"MajorID" toValue:MajorID];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupMajors Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The results from the search in XML or JSON format.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search for majors by id or keyword.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_LookupMajors

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_CollegesAndUniversities_LookupMajors Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/CollegesAndUniversities/LookupMajors"] autorelease];
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
		TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_ResultSet *results = [[[TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LookupMajors Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the GraduationRates Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_Inputs

	/*!
	 * Set the value of the InstitutionID input for this Choreo.
	*(optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
	 */
	-(void)setInstitutionID:(NSString*)InstitutionID {
		[super setInput:@"InstitutionID" toValue:InstitutionID];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) Limits the number of rows returned. Defaults to 20.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GraduationRates Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Data.ed.gov.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns gradutation statistics about colleges and univeristies.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_GraduationRates

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_CollegesAndUniversities_GraduationRates Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/CollegesAndUniversities/GraduationRates"] autorelease];
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
		TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_ResultSet *results = [[[TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the GraduationRates Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EnrollmentDemographics Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_Inputs

	/*!
	 * Set the value of the InstitutionID input for this Choreo.
	*(optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
	 */
	-(void)setInstitutionID:(NSString*)InstitutionID {
		[super setInput:@"InstitutionID" toValue:InstitutionID];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) Limits the number of rows returned. Defaults to 20.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EnrollmentDemographics Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Data.ed.gov.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns demographic data for colleges and universities.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/CollegesAndUniversities/EnrollmentDemographics"] autorelease];
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
		TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_ResultSet *results = [[[TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EnrollmentDemographics Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the LookupSchool Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_Inputs

	/*!
	 * Set the value of the Keyword input for this Choreo.
	*(required, string) Used to perform a full text search on the data set. For example, you can search for an institution's name or an institution's ID.
	 */
	-(void)setKeyword:(NSString*)Keyword {
		[super setInput:@"Keyword" toValue:Keyword];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) Limits the number of rows returned. Defaults to 20.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupSchool Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Data.ed.gov.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Allows you to search the U.S. Department of Education college and univeristy listings.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_LookupSchool

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_CollegesAndUniversities_LookupSchool Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/CollegesAndUniversities/LookupSchool"] autorelease];
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
		TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_ResultSet *results = [[[TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the LookupSchool Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the EducationalOfferings Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_Inputs

	/*!
	 * Set the value of the InstitutionID input for this Choreo.
	*(optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
	 */
	-(void)setInstitutionID:(NSString*)InstitutionID {
		[super setInput:@"InstitutionID" toValue:InstitutionID];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) Limits the number of rows returned. Defaults to 20.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EducationalOfferings Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Data.ed.gov.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns educational offerings and admissions data for any college or university.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/CollegesAndUniversities/EducationalOfferings"] autorelease];
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
		TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_ResultSet *results = [[[TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the EducationalOfferings Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the StudentCharges Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_Inputs

	/*!
	 * Set the value of the InstitutionID input for this Choreo.
	*(optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
	 */
	-(void)setInstitutionID:(NSString*)InstitutionID {
		[super setInput:@"InstitutionID" toValue:InstitutionID];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) Limits the number of rows returned. Defaults to 20.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StudentCharges Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Data.ed.gov.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns tuition information for colleges and universities.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_StudentCharges

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_CollegesAndUniversities_StudentCharges Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/CollegesAndUniversities/StudentCharges"] autorelease];
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
		TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_ResultSet *results = [[[TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the StudentCharges Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_Inputs alloc] init] autorelease];
	}
@end



/*!
 * Input object with appropriate setters for specifying arguments to the FinancialAid Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_Inputs

	/*!
	 * Set the value of the InstitutionID input for this Choreo.
	*(optional, string) Specify an institutionID to return data on a specific institution. These ids can be retrieved from the LookupSchool Choreo.
	 */
	-(void)setInstitutionID:(NSString*)InstitutionID {
		[super setInput:@"InstitutionID" toValue:InstitutionID];
	}

	/*!
	 * Set the value of the MaxRows input for this Choreo.
	*(optional, integer) Limits the number of rows returned. Defaults to 20.
	 */
	-(void)setMaxRows:(NSString*)MaxRows {
		[super setInput:@"MaxRows" toValue:MaxRows];
	}

	/*!
	 * Set the value of the ResponseFormat input for this Choreo.
	*(optional, string) The format that the response should be in. Valid values are: xml (the default) and json.
	 */
	-(void)setResponseFormat:(NSString*)ResponseFormat {
		[super setInput:@"ResponseFormat" toValue:ResponseFormat];
	}	

@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinancialAid Choreo.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_ResultSet

	-(id)initWithResponse:(NSDictionary*)document {
		return [super initWithResponse:document];
	}	
	
	/*!
	 * Retrieve the value of the "Response" output from an execution of this Choreo.
	 * @return - NSString* The response from Data.ed.gov.
	 * @throws TMBExceptionNotFound if output does not exist. (Note an empty response is considered valid)
	 */
	-(NSString*)getResponse {
		return [super getOutputByName:@"Response"];
	}
	
@end

/*!
 * Returns student financial aid and net price information for colleges and universities.
 */
@implementation TMBDeptOfEducation_CollegesAndUniversities_FinancialAid

	/*!
	 * Initialize the Choreo with a valid session
	 *
	 * @param session - A TMBTembooSession containing valid Temboo Application Key credentials
	 *
	 * @return - The initialized TMBDeptOfEducation_CollegesAndUniversities_FinancialAid Choreo
	 */
	-(id)initWithSession:(TMBTembooSession *)session {
		TMBTembooUri *uri = [[[TMBTembooUri alloc] initWithString:@"/Library/DeptOfEducation/CollegesAndUniversities/FinancialAid"] autorelease];
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
		TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_ResultSet *results = [[[TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_ResultSet alloc] initWithResponse:response] autorelease];
		[self.choreoDelegate choreographyDidFinishExecuting:results];
	}
	
	/*!
	 * Obtain an inputs object for the FinancialAid Choreo.
	 *
	 * @return - New inputs object
	 */
	-(TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_Inputs*)newInputSet {
		return [[[TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_Inputs alloc] init] autorelease];
	}
@end
	