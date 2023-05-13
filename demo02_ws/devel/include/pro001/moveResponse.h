// Generated by gencpp from file pro001/moveResponse.msg
// DO NOT EDIT!


#ifndef PRO001_MESSAGE_MOVERESPONSE_H
#define PRO001_MESSAGE_MOVERESPONSE_H


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
struct moveResponse_
{
  typedef moveResponse_<ContainerAllocator> Type;

  moveResponse_()
    : sum(0)  {
    }
  moveResponse_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int64_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::pro001::moveResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pro001::moveResponse_<ContainerAllocator> const> ConstPtr;

}; // struct moveResponse_

typedef ::pro001::moveResponse_<std::allocator<void> > moveResponse;

typedef boost::shared_ptr< ::pro001::moveResponse > moveResponsePtr;
typedef boost::shared_ptr< ::pro001::moveResponse const> moveResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pro001::moveResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pro001::moveResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pro001::moveResponse_<ContainerAllocator1> & lhs, const ::pro001::moveResponse_<ContainerAllocator2> & rhs)
{
  return lhs.sum == rhs.sum;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pro001::moveResponse_<ContainerAllocator1> & lhs, const ::pro001::moveResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pro001

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pro001::moveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pro001::moveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pro001::moveResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pro001::moveResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pro001::moveResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pro001::moveResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pro001::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b88405221c77b1878a3cbbfff53428d7";
  }

  static const char* value(const ::pro001::moveResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb88405221c77b187ULL;
  static const uint64_t static_value2 = 0x8a3cbbfff53428d7ULL;
};

template<class ContainerAllocator>
struct DataType< ::pro001::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pro001/moveResponse";
  }

  static const char* value(const ::pro001::moveResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pro001::moveResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int64 sum\n"
"\n"
;
  }

  static const char* value(const ::pro001::moveResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pro001::moveResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct moveResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pro001::moveResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pro001::moveResponse_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int64_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PRO001_MESSAGE_MOVERESPONSE_H
