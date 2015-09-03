// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from todolist.djinni

#import "TDATodoList+Private.h"
#import "TDATodoList.h"
#import "DJICppWrapperCache+Private.h"
#import "DJIError.h"
#import "DJIMarshal+Private.h"
#import "TDATodo+Private.h"
#import "TDATodoList+Private.h"
#include <exception>
#include <utility>

static_assert(__has_feature(objc_arc), "Djinni requires ARC to be enabled for this file");

@interface TDATodoList ()

@property (nonatomic, readonly) ::djinni::DbxCppWrapperCache<::todolist::TodoList>::Handle cppRef;

- (id)initWithCpp:(const std::shared_ptr<::todolist::TodoList>&)cppRef;

@end

@implementation TDATodoList

- (id)initWithCpp:(const std::shared_ptr<::todolist::TodoList>&)cppRef
{
    if (self = [super init]) {
        _cppRef.assign(cppRef);
    }
    return self;
}

+ (nullable TDATodoList *)createWithPath:(nonnull NSString *)path {
    try {
        auto r = ::todolist::TodoList::create_with_path(::djinni::String::toCpp(path));
        return ::djinni_generated::TodoList::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (nonnull NSArray *)getTodos {
    try {
        auto r = _cppRef.get()->get_todos();
        return ::djinni::List<::djinni_generated::Todo>::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (int32_t)addTodo:(nonnull NSString *)label {
    try {
        auto r = _cppRef.get()->add_todo(::djinni::String::toCpp(label));
        return ::djinni::I32::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)updateTodoCompleted:(int32_t)id
                  completed:(int32_t)completed {
    try {
        auto r = _cppRef.get()->update_todo_completed(::djinni::I32::toCpp(id),
                                                      ::djinni::I32::toCpp(completed));
        return ::djinni::Bool::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

- (BOOL)deleteTodo:(int32_t)id {
    try {
        auto r = _cppRef.get()->delete_todo(::djinni::I32::toCpp(id));
        return ::djinni::Bool::fromCpp(r);
    } DJINNI_TRANSLATE_EXCEPTIONS()
}

@end

namespace djinni_generated {

auto TodoList::toCpp(ObjcType objc) -> CppType
{
    if (!objc) {
        return nullptr;
    }
    return objc.cppRef.get();
}

auto TodoList::fromCpp(const CppType& cpp) -> ObjcType
{
    if (!cpp) {
        return nil;
    }
    return ::djinni::DbxCppWrapperCache<::todolist::TodoList>::getInstance()->get(cpp, [] (const CppType& p) {
        return [[TDATodoList alloc] initWithCpp:p];
    });
}

}  // namespace djinni_generated
