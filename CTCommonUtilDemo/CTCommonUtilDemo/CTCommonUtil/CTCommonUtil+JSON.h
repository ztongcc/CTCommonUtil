//
//  CTCommonUtil+JSON.h
//  CTCommonUtilDemo
//
//  Created by Admin on 2017/1/16.
//  Copyright © 2017年 Arvin. All rights reserved.
//

#import "CTCommonUtil.h"

@interface CTCommonUtil (JSON)

/**
 *  Validation is a JSON object
 *
 *  @return result
 */
BOOL ct_isValidJSONObj(id jsonObj);

/**
 *  Will develop under the path of file into the JSON Object
 *
 *  @param filePath 文件路径
 *
 *  @return json Object
 */
id ct_JSONObjectWithFilePath(NSString * filePath);

/**
 *  Will develop  the data into the JSON Object
 *
 *  @param data data
 *
 *  @return json Object
 */
id ct_JSONObjectWithData(NSData * data);


/**
 *  Will develop  the Object into the JSON string
 *
 *  @param obj <#obj description#>
 *
 *  @return json string
 */
NSString * ct_JSONStringWithObj(id obj);

/**
 *  Will develop  the Dictonary into the JSON string By sort key
 *
 *  @param dict Dictonary object
 *
 *  @return json string
 */
NSString * ct_JSONStringBySortedKeyFromDictionary(NSDictionary * dict);

@end
