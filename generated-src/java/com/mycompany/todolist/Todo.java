// AUTOGENERATED FILE - DO NOT MODIFY!
// This file generated by Djinni from todolist.djinni

package com.mycompany.todolist;

public final class Todo {


    /*package*/ final int mId;

    /*package*/ final String mLabel;

    /*package*/ final int mCompleted;

    public Todo(
            int id,
            String label,
            int completed) {
        this.mId = id;
        this.mLabel = label;
        this.mCompleted = completed;
    }

    public int getId() {
        return mId;
    }

    public String getLabel() {
        return mLabel;
    }

    public int getCompleted() {
        return mCompleted;
    }
}
