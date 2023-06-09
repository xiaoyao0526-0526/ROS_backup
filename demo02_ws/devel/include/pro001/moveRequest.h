// Generated by gencpp from file pro001/moveRequest.msg
// DO NOT EDIT!


#ifndef PRO001_MESSAGE_MOVEREQUEST_H
#define PRO001_MESSAGE_MOVEREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pro001
{
template <class ContainerAllocator>
struct moveRequest_
{
  typedef moveRequest_<ContainerAllocator> Type;

  moveRequest_()
    : a(0)  {
    }
  moveRequest_(const ContainerAllocator& _alloc)
    : a(0)  {
  (void)_alloc;
    }



   typedef int64_t _a_type;
  _a_type a;





  typedef boost::shared_ptr< ::pro001::moveRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pro001::moveRequest_<ContainerAllocator> const> ConstPtr;

}; // struct moveRequest_

typedef ::pro001::moveRequest_<std::allocator<void> > moveRequest;

typedef boost::shared_ptr< ::pro001::moveRequest > moveRequestPtr;
typedef boost::shared_ptr< ::pro001::moveRequest const> moveRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pro001::moveRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pro001::moveRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pro001::moveRequest_<ContainerAllocator1> & lhs, const ::pro001::moveRequest_<ContainerAllocator2> & rhs)
{
  return lhs.a == rhs.a;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pro001::moveRequest_<ContainerAllocator1> & lhs, const ::pro001::moveRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pro001

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pro001::moveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pro001::moveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pro001::moveRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pro001::moveRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pro001::moveRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pro001::moveRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pro001::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "019706110004b728d56d8baaa8e32797";
  }

  static const char* value(const ::pro001::moveRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x019706110004b728ULL;
  static const uint64_t static_value2 = 0xd56d8baaa8e32797ULL;
};

template<class ContainerAllocator>
struct DataType< ::pro001::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pro001/moveRequest";
  }

  static const char* value(const ::pro001::moveRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pro001::moveRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 a\n"
;
  }

  static const char* value(const ::pro001::moveRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pro001::moveRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.a);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pro001::moveRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pro001::moveRequest_<ContainerAllocator>& v)
  {
    s << indent << "a: ";
    Printer<int64_t>::stream(s, indent + "  ", v.a);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PRO001_MESSAGE_MOVEREQUEST_H
