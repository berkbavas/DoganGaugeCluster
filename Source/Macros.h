#pragma once

#define DECLARE_MEMBER(TYPE, MEMBER) \
public: \
    TYPE Get##MEMBER(void) const \
    { \
        return m##MEMBER; \
    } \
    void Set##MEMBER(TYPE newValue); \
\
private: \
    TYPE m##MEMBER

#define DEFINE_SET_METHOD(CLASS, TYPE, MEMBER) \
    void CLASS::Set##MEMBER(TYPE NEW_VALUE) \
    { \
        if (std::isnan(NEW_VALUE) || qFuzzyCompare(m##MEMBER, NEW_VALUE)) \
        { \
            return; \
        } \
        m##MEMBER = NEW_VALUE; \
        emit MEMBER##Changed(); \
    }

#define DEFINE_SET_METHOD_FOR_BOOL(CLASS, MEMBER) \
    void CLASS::Set##MEMBER(bool NEW_VALUE) \
    { \
        if (NEW_VALUE == m##MEMBER) { \
            return; \
        } \
        m##MEMBER = NEW_VALUE; \
        emit MEMBER##Changed(); \
    }
