// Generated by gencpp from file ser_cli/addints.msg
// DO NOT EDIT!


#ifndef SER_CLI_MESSAGE_ADDINTS_H
#define SER_CLI_MESSAGE_ADDINTS_H

#include <ros/service_traits.h>


#include <ser_cli/addintsRequest.h>
#include <ser_cli/addintsResponse.h>


namespace ser_cli
{

struct addints
{

typedef addintsRequest Request;
typedef addintsResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct addints
} // namespace ser_cli


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::ser_cli::addints > {
  static const char* value()
  {
    return "4781436a0c2affec8025955a6041e481";
  }

  static const char* value(const ::ser_cli::addints&) { return value(); }
};

template<>
struct DataType< ::ser_cli::addints > {
  static const char* value()
  {
    return "ser_cli/addints";
  }

  static const char* value(const ::ser_cli::addints&) { return value(); }
};


// service_traits::MD5Sum< ::ser_cli::addintsRequest> should match
// service_traits::MD5Sum< ::ser_cli::addints >
template<>
struct MD5Sum< ::ser_cli::addintsRequest>
{
  static const char* value()
  {
    return MD5Sum< ::ser_cli::addints >::value();
  }
  static const char* value(const ::ser_cli::addintsRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::ser_cli::addintsRequest> should match
// service_traits::DataType< ::ser_cli::addints >
template<>
struct DataType< ::ser_cli::addintsRequest>
{
  static const char* value()
  {
    return DataType< ::ser_cli::addints >::value();
  }
  static const char* value(const ::ser_cli::addintsRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::ser_cli::addintsResponse> should match
// service_traits::MD5Sum< ::ser_cli::addints >
template<>
struct MD5Sum< ::ser_cli::addintsResponse>
{
  static const char* value()
  {
    return MD5Sum< ::ser_cli::addints >::value();
  }
  static const char* value(const ::ser_cli::addintsResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::ser_cli::addintsResponse> should match
// service_traits::DataType< ::ser_cli::addints >
template<>
struct DataType< ::ser_cli::addintsResponse>
{
  static const char* value()
  {
    return DataType< ::ser_cli::addints >::value();
  }
  static const char* value(const ::ser_cli::addintsResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SER_CLI_MESSAGE_ADDINTS_H