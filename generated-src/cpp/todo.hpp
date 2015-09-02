// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from todolist.djinni

#pragma once

#include <cstdint>
#include <string>
#include <utility>

namespace todolist {

struct Todo final {
    int32_t id;
    std::string label;
    int32_t completed;

    Todo(int32_t id,
         std::string label,
         int32_t completed)
    : id(std::move(id))
    , label(std::move(label))
    , completed(std::move(completed))
    {}
};

}  // namespace todolist
