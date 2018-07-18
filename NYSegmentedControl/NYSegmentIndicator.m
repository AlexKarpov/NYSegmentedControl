#import "NYSegmentIndicator.h"

@implementation NYSegmentIndicator

+ (Class)layerClass {
    return [CAGradientLayer class];
}

- (id)initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    if (self) {
        self.layer.masksToBounds = YES;
        self.opaque = NO;
        self.cornerRadius = 4.0f;
        self.borderColor = [UIColor lightGrayColor];
        self.borderWidth = 1.0f;
    }
    return self;
}

#pragma mark - Getters and Setters

- (void)setBorderColor:(UIColor *)borderColor {
    self.layer.borderColor = [borderColor CGColor];
}

- (UIColor *)borderColor {
    return [UIColor colorWithCGColor:self.layer.borderColor];
}

- (void)setBorderWidth:(CGFloat)borderWidth {
    self.layer.borderWidth = borderWidth;
}

- (CGFloat)borderWidth {
    return self.layer.borderWidth;
}

- (void)setCornerRadius:(CGFloat)cornerRadius {
    self.layer.cornerRadius = cornerRadius;
    [self setNeedsDisplay];
}

- (CGFloat)cornerRadius {
    return self.layer.cornerRadius;
}

- (void)setDrawsGradientBackground:(BOOL)drawsGradientBackground {
    _drawsGradientBackground = drawsGradientBackground;
    [self setNeedsDisplay];
}

- (void)setGradientTopColor:(UIColor *)gradientTopColor {
    _gradientTopColor = gradientTopColor;
    [self setNeedsDisplay];
}

- (void)setGradientBottomColor:(UIColor *)gradientBottomColor {
    _gradientBottomColor = gradientBottomColor;
    [self setNeedsDisplay];
}

@end
