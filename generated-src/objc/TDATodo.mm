// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from todolist.djinni

#import "TDATodo.h"


@implementation TDATodo

- (nonnull instancetype)initWithId:(int32_t)id
                             label:(nonnull NSString *)label
                            status:(TDATodoStatus)status
{
    if (self = [super init]) {
        _id = id;
        _label = [label copy];
        _status = status;
    }
    return self;
}

+ (nonnull instancetype)todoWithId:(int32_t)id
                             label:(nonnull NSString *)label
                            status:(TDATodoStatus)status
{
    return [[self alloc] initWithId:id
                              label:label
                             status:status];
}

@end
