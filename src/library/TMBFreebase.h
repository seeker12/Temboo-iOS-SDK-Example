/*!
 * @header Temboo iOS SDK Freebase classes
 *
 * Execute Choreographies from the Temboo Freebase bundle.
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

/*! group TMBFreebase.Image Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Image Choreo.
 */
@interface TMBFreebase_Image_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setFallbackID:(NSString*)FallbackID;
	-(void)setID:(NSString*)ID;
	-(void)setMaximumHeight:(NSString*)MaximumHeight;
	-(void)setMaximumWidth:(NSString*)MaximumWidth;
	-(void)setMode:(NSString*)Mode;
	-(void)setPad:(NSString*)Pad;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Image Choreo.
 */
@interface TMBFreebase_Image_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Generates a thumbnail for an image from the content database to the requested size. 
 */
@interface TMBFreebase_Image : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFreebase_Image_Inputs*)newInputSet;
@end

/*! group TMBFreebase_Image Choreo */


/*! group TMBFreebase.Search Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Search Choreo.
 */
@interface TMBFreebase_Search_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setDomain:(NSString*)Domain;
	-(void)setEscapeHTMLResults:(NSString*)EscapeHTMLResults;
	-(void)setExact:(NSString*)Exact;
	-(void)setFilter:(NSString*)Filter;
	-(void)setIndent:(NSString*)Indent;
	-(void)setLanguage:(NSString*)Language;
	-(void)setLimit:(NSString*)Limit;
	-(void)setMQLOutput:(NSString*)MQLOutput;
	-(void)setPrefixed:(NSString*)Prefixed;
	-(void)setQuery:(NSString*)Query;
	-(void)setStart:(NSString*)Start;
	-(void)setType:(NSString*)Type;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Search Choreo.
 */
@interface TMBFreebase_Search_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search the Freebase dataset.
 */
@interface TMBFreebase_Search : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFreebase_Search_Inputs*)newInputSet;
@end

/*! group TMBFreebase_Search Choreo */


/*! group TMBFreebase.Text Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the Text Choreo.
 */
@interface TMBFreebase_Text_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setFormat:(NSString*)Format;
	-(void)setID:(NSString*)ID;
	-(void)setLanguage:(NSString*)Language;
	-(void)setMaximumLength:(NSString*)MaximumLength;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the Text Choreo.
 */
@interface TMBFreebase_Text_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Access Freebase topic and schema descriptions.
 */
@interface TMBFreebase_Text : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFreebase_Text_Inputs*)newInputSet;
@end

/*! group TMBFreebase_Text Choreo */


/*! group TMBFreebase.MQLRead Choreo */

/*!
 * Input object with appropriate setters for specifying arguments to the MQLRead Choreo.
 */
@interface TMBFreebase_MQLRead_Inputs : TMBChoreographyInputSet
	-(void)setAPIKey:(NSString*)APIKey;
	-(void)setAsOfTime:(NSString*)AsOfTime;
	-(void)setCost:(NSString*)Cost;
	-(void)setCursor:(NSString*)Cursor;
	-(void)setEscapeHTMLResults:(NSString*)EscapeHTMLResults;
	-(void)setIndent:(NSString*)Indent;
	-(void)setLanguage:(NSString*)Language;
	-(void)setQuery:(NSString*)Query;
	-(void)setUniqenessFailure:(NSString*)UniqenessFailure;
@end

/*!
 * Results object with appropriate getters for retrieving outputs from the MQLRead Choreo.
 */
@interface TMBFreebase_MQLRead_ResultSet : TMBChoreographyResultSet
	-(id)initWithResponse:(NSDictionary*)document;
	-(NSString*)getResponse;	
@end

/*!
 * Search the Freebase dataset using the Metaweb query language (MQL).
 */
@interface TMBFreebase_MQLRead : TMBChoreography <TMBChoreographyDelegate>
	-(id)initWithSession:(TMBTembooSession*)session;
	-(TMBFreebase_MQLRead_Inputs*)newInputSet;
@end

/*! group TMBFreebase_MQLRead Choreo */
