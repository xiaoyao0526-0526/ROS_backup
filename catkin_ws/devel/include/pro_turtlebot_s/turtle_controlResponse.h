// Generated by gencpp from file pro_turtlebot_s/turtle_controlResponse.msg
// DO NOT EDIT!


#ifndef PRO_TURTLEBOT_S_MESSAGE_TURTLE_CONTROLRESPONSE_H
#define PRO_TURTLEBOT_S_MESSAGE_TURTLE_CONTROLRESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pro_turtlebot_s
{
template <class ContainerAllocator>
struct turtle_controlResponse_
{
  typedef turtle_controlResponse_<ContainerAllocator> Type;

  turtle_controlResponse_()
    : success(false)  {
    }
  turtle_controlResponse_(const ContainerAllocator& _alloc)
    : success(false)  {
  (void)_alloc;
    }



   typedef uint8_t _success_type;
  _success_type success;




  typedef boost::shared_ptr< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> const> ConstPtr;

}; // struct turtle_controlResponse_

typedef ::pro_turtlebot_s::turtle_controlResponse_<std::allocator<void> > turtle_controlResponse;

typedef boost::shared_ptr< ::pro_turtlebot_s::turtle_controlResponse > turtle_controlResponsePtr;
typedef boost::shared_ptr< ::pro_turtlebot_s::turtle_controlResponse const> turtle_controlResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pro_turtlebot_s

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'pro_turtlebot_s': ['/home/ros/catkin_ws/src/proTurtlebotS_turtlesimVersion/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "358e233cde0c8a8bcfea4ce193f8fc15";
  }

  static const char* value(const ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x358e233cde0c8a8bULL;
  static const uint64_t static_value2 = 0xcfea4ce193f8fc15ULL;
};

template<class ContainerAllocator>
struct DataType< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pro_turtlebot_s/turtle_controlResponse";
  }

  static const char* value(const ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool success\n\
";
  }

  static const char* value(const ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.success);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct turtle_controlResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pro_turtlebot_s::turtle_controlResponse_<ContainerAllocator>& v)
  {
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PRO_TURTLEBOT_S_MESSAGE_TURTLE_CONTROLRESPONSE_H
