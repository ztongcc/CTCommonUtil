//
//  CTCommonUtil+File.h
//  CTCommonUtilDemo
//
//  Created by Admin on 16/8/22.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "CTCommonUtil.h"

@interface CTCommonUtil (File)

/**
 *  Return the path of file in document directory
 *
 *  @param fileName file name
 *
 *  @return path
 */
NSString * ct_pathInDocument(NSString * fileName);
/**
 *  Return the path of file in library directory
 *
 *  @param fileName file name
 *
 *  @return path
 */
NSString * ct_pathInLibrary(NSString * fileName);

/**
 *  Return the path of file in cache directory
 *
 *  @param fileName file name
 *
 *  @return path
 */
NSString * ct_pathInCaches(NSString * fileName);
/**
 *  Return bags resource path
 *
 *  @param fileName resource name
 *  @param fileType resource type
 *
 *  @return resource path
 */
NSString * ct_pathResource(NSString *fileName, NSString * fileType);


@end
