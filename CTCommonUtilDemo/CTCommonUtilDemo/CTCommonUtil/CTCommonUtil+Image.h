//
//  CTCommonUtil+Image.h
//  CTCommonUtilDemo
//
//  Created by Admin on 2016/12/30.
//  Copyright © 2016年 Arvin. All rights reserved.
//

#import "CTCommonUtil.h"

@interface CTCommonUtil (Image)

/**
 *  Create and return image
 *
 *  @param imageName image name
 *
 *  @return image object
 */
UIImage * ct_imageWithName(NSString * imageName);

/**
 * Create and return an image object by a color
 *
 *  @param color source color
 *
 *  @return image object
 */
UIImage * ct_imageWithColor(UIColor * color);

/**
 *  Create and return a given size of the image object through a color
 *
 *  @param color source color
 *  @param size  given size
 *
 *  @return image objet
 */
UIImage * ct_imageWithColorInSize(UIColor * color, CGSize size);

/**
 *  Create and return a can stretch the image object (Default UIEdgeInsetsMake(3, 3, 3, 3))
 *
 *  @param sourceImage source image name
 *
 *  @return To stretch the image object
 */

UIImage * ct_imageResizableWithImageName(NSString  * imageName);

/**
 *  Create and return a can stretch the image object (Default UIEdgeInsetsMake(3, 3, 3, 3))
 *
 *  @param sourceImage source image
 *
 *  @return To stretch the image object
 */

UIImage * ct_imageResizableWithImage(UIImage  * sourceImage);
/**
 *  Create and return a can stretch the image object
 *
 *  @param sourceImage source image
 *  @param edgeInsets  EdgeInsets limiit
 *
 *  @return To stretch the image object
 */
UIImage * ct_imageResizableWithCapInsets(UIImage * sourceImage, UIEdgeInsets edgeInsets);


/**
 *  Create and return a can stretch the image object
 *
 *  @param sourceImage source image name
 *  @param edgeInsets  EdgeInsets limiit
 *
 *  @return To stretch the image object
 */
UIImage * ct_imageResizableWithInsetsMode(NSString * sourceImageName, UIEdgeInsets edgeInsets, UIImageResizingMode mode);

/**
 *  Create and return a  image object (RenderingMode : UIImageRenderingModeAlwaysOriginal )
 *
 *  @param sourceImage source image
 *
 *  @return the image object
 */
UIImage * ct_imageRenderingOriginalMode(UIImage * sourceImage);


/**
 *  Return Launch image name if have Portrait mode
 *
 *  @return image name
 */
UIImage * ct_getLaunchImage();

/**
 *  Return Launch image name if have Landscape mode
 *
 *  @return image name
 */
UIImage * ct_getLaunchImageLandscape();


@end
