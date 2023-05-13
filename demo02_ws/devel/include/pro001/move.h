// Generated by gencpp from file pro001/move.msg
// DO NOT EDIT!


#ifndef PRO001_MESSAGE_MOVE_H
#define PRO001_MESSAGE_MOVE_H

#include <ros/service_traits.h>


#include <pro001/moveRequest.h>
#include <pro001/moveResponse.h>


namespace pro001
{

struct move
{

typedef moveRequest Request;
typedef moveResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct move
} // namespace pro001


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::pro001::move > {
  static const char* value()
  {
    return "0cd2157d7eaac1ba7a7e9dde0a510aef";
  }

  static const char* value(const ::pro001::move&) { return value(); }
};

template<>
struct DataType< ::pro001::move > {
  static const char* value()
  {
    return "pro001/move";
  }

  static const char* value(const ::pro001::move&) { return value(); }
};


// service_traits::MD5Sum< ::pro001::moveRequest> should match
// service_traits::MD5Sum< ::pro001::move >
template<>
struct MD5Sum< ::pro001::moveRequest>
{
  static const char* value()
  {
    return MD5Sum< ::pro001::move >::value();
  }
  static const char* value(const ::pro001::moveRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::pro001::moveRequest> should match
// service_traits::DataType< ::pro001::move >
template<>
struct DataType< ::pro001::moveRequest>
{
  static const char* value()
  {
    return DataType< ::pro001::move >::value();
  }
  static const char* value(const ::pro001::moveRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::pro001::moveResponse> should match
// service_traits::MD5Sum< ::pro001::move >
template<>
struct MD5Sum< ::pro001::moveResponse>
{
  static const char* value()
  {
    return MD5Sum< ::pro001::move >::value();
  }
  static const char* value(const ::pro001::moveResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::pro001::moveResponse> should match
// service_traits::DataType< ::pro001::move >
template<>
struct DataType< ::pro001::moveResponse>
{
  static const char* value()
  {
    return DataType< ::pro001::move >::value();
  }
  static const char* value(const ::pro001::moveResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // PRO001_MESSAGE_MOVE_H