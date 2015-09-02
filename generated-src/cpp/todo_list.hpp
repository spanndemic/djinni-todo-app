// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from todolist.djinni

#pragma once

#include "todo.hpp"
#include "todo_status.hpp"
#include <cstdint>
#include <memory>
#include <string>
#include <vector>

namespace todolist {

class TodoList {
public:
    virtual ~TodoList() {}

    static std::shared_ptr<TodoList> create();

    virtual std::vector<Todo> get_todos() = 0;

    virtual int32_t add_todo(const std::string & label) = 0;

    virtual bool update_todo_status(int32_t id, TodoStatus status) = 0;

    virtual bool delete_todo(int32_t id) = 0;
};

}  // namespace todolist
