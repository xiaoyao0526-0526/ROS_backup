// Generated by gencpp from file exp6_524/DoSquareRequest.msg
// DO NOT EDIT!


#ifndef EXP6_524_MESSAGE_DOSQUAREREQUEST_H
#define EXP6_524_MESSAGE_DOSQUAREREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace exp6_524
{
template <class ContainerAllocator>
struct DoSquareRequest_
{
  typedef DoSquareRequest_<ContainerAllocator> Type;

  DoSquareRequest_()
    : radius(0.0)  {
    }
  DoSquareRequest_(const ContainerAllocator& _alloc)
    : radius(0.0)  {
  (void)_alloc;
    }



   typedef float _radius_type;
  _radius_type radius;




  typedef boost::shared_ptr< ::exp6_524::DoSquareRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::exp6_524::DoSquareRequest_<ContainerAllocator> const> ConstPtr;

}; // struct DoSquareRequest_

typedef ::exp6_524::DoSquareRequest_<std::allocator<void> > DoSquareRequest;

typedef boost::shared_ptr< ::exp6_524::DoSquareRequest > DoSquareRequestPtr;
typedef boost::shared_ptr< ::exp6_524::DoSquareRequest const> DoSquareRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::exp6_524::DoSquareRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::exp6_524::DoSquareRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace exp6_524

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'exp6_524': ['/home/ros/catkin_ws/src/exp6_524/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::exp6_524::DoSquareRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::exp6_524::DoSquareRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp6_524::DoSquareRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::exp6_524::DoSquareRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp6_524::DoSquareRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::exp6_524::DoSquareRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::exp6_524::DoSquareRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0b690044065f2210effb664cc7a28125";
  }

  static const char* value(const ::exp6_524::DoSquareRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0b690044065f2210ULL;
  static const uint64_t static_value2 = 0xeffb664cc7a28125ULL;
};

template<class ContainerAllocator>
struct DataType< ::exp6_524::DoSquareRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "exp6_524/DoSquareRequest";
  }

  static const char* value(const ::exp6_524::DoSquareRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::exp6_524::DoSquareRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 radius\n\
";
  }

  static const char* value(const ::exp6_524::DoSquareRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::exp6_524::DoSquareRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.radius);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DoSquareRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::exp6_524::DoSquareRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::exp6_524::DoSquareRequest_<ContainerAllocator>& v)
  {
    s << indent << "radius: ";
    Printer<float>::stream(s, indent + "  ", v.radius);
  }
};

} // namespace message_operations
} // namespace ros

#endif // EXP6_524_MESSAGE_DOSQUAREREQUEST_H
