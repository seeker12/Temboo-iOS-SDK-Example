/*!
 * @header Temboo iOS SDK DeptOfEducation classes
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

#import <Foundation/Foundation.h>
#import "TMBChoreography.h"

@class TMBTembooSession;

/*! group TMBDeptOfEducation.CollegesAndUniversities.DegreesConferred Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the DegreesConferred Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_Inputs : TMBChoreographyInputSet
	-(void)setInstitutionID:(NSString*)InstitutionID;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the DegreesConferred Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns a list of all degrees conferred by a given institution, along with detailed demographic data for each degree awarded.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_CollegesAndUniversities_DegreesConferred_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.CollegesAndUniversities_DegreesConferred Choreo */


/*! group TMBDeptOfEducation.ElementaryAndSecondary.LookupSchool Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LookupSchool Choreo.
 */
@interface TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_Inputs : TMBChoreographyInputSet
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupSchool Choreo.
 */
@interface TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search the U.S. Department of Education elementary and secondary school listings which includes general school information, demographic data, and location data.
 */
@interface TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_ElementaryAndSecondary_LookupSchool_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.ElementaryAndSecondary_LookupSchool Choreo */


/*! group TMBDeptOfEducation.CollegesAndUniversities.LookupMajors Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LookupMajors Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_Inputs : TMBChoreographyInputSet
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setMajorID:(NSString*)MajorID;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupMajors Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search for majors by id or keyword.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_LookupMajors : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_CollegesAndUniversities_LookupMajors_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.CollegesAndUniversities_LookupMajors Choreo */


/*! group TMBDeptOfEducation.CollegesAndUniversities.GraduationRates Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the GraduationRates Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_Inputs : TMBChoreographyInputSet
	-(void)setInstitutionID:(NSString*)InstitutionID;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the GraduationRates Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns gradutation statistics about colleges and univeristies.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_GraduationRates : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_CollegesAndUniversities_GraduationRates_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.CollegesAndUniversities_GraduationRates Choreo */


/*! group TMBDeptOfEducation.CollegesAndUniversities.EnrollmentDemographics Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EnrollmentDemographics Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_Inputs : TMBChoreographyInputSet
	-(void)setInstitutionID:(NSString*)InstitutionID;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EnrollmentDemographics Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns demographic data for colleges and universities.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_CollegesAndUniversities_EnrollmentDemographics_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.CollegesAndUniversities_EnrollmentDemographics Choreo */


/*! group TMBDeptOfEducation.CollegesAndUniversities.LookupSchool Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the LookupSchool Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_Inputs : TMBChoreographyInputSet
	-(void)setKeyword:(NSString*)Keyword;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the LookupSchool Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Allows you to search the U.S. Department of Education college and univeristy listings.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_LookupSchool : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_CollegesAndUniversities_LookupSchool_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.CollegesAndUniversities_LookupSchool Choreo */


/*! group TMBDeptOfEducation.CollegesAndUniversities.EducationalOfferings Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the EducationalOfferings Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_Inputs : TMBChoreographyInputSet
	-(void)setInstitutionID:(NSString*)InstitutionID;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the EducationalOfferings Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns educational offerings and admissions data for any college or university.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_CollegesAndUniversities_EducationalOfferings_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.CollegesAndUniversities_EducationalOfferings Choreo */


/*! group TMBDeptOfEducation.CollegesAndUniversities.StudentCharges Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the StudentCharges Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_Inputs : TMBChoreographyInputSet
	-(void)setInstitutionID:(NSString*)InstitutionID;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the StudentCharges Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns tuition information for colleges and universities.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_StudentCharges : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_CollegesAndUniversities_StudentCharges_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.CollegesAndUniversities_StudentCharges Choreo */


/*! group TMBDeptOfEducation.CollegesAndUniversities.FinancialAid Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the FinancialAid Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_Inputs : TMBChoreographyInputSet
	-(void)setInstitutionID:(NSString*)InstitutionID;
	-(void)setMaxRows:(NSString*)MaxRows;
	-(void)setResponseFormat:(NSString*)ResponseFormat;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the FinancialAid Choreo.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Returns student financial aid and net price information for colleges and universities.
 */
@interface TMBDeptOfEducation_CollegesAndUniversities_FinancialAid : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBDeptOfEducation_CollegesAndUniversities_FinancialAid_Inputs*)newInputSet;
@end

/*! group TMBDeptOfEducation.CollegesAndUniversities_FinancialAid Choreo */
