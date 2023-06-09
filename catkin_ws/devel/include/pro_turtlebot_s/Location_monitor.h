// Generated by gencpp from file pro_turtlebot_s/Location_monitor.msg
// DO NOT EDIT!


#ifndef PRO_TURTLEBOT_S_MESSAGE_LOCATION_MONITOR_H
#define PRO_TURTLEBOT_S_MESSAGE_LOCATION_MONITOR_H


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
struct Location_monitor_
{
  typedef Location_monitor_<ContainerAllocator> Type;

  Location_monitor_()
    : name()
    , distance(0.0)  {
    }
  Location_monitor_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , distance(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _name_type;
  _name_type name;

   typedef double _distance_type;
  _distance_type distance;




  typedef boost::shared_ptr< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> const> ConstPtr;

}; // struct Location_monitor_

typedef ::pro_turtlebot_s::Location_monitor_<std::allocator<void> > Location_monitor;

typedef boost::shared_ptr< ::pro_turtlebot_s::Location_monitor > Location_monitorPtr;
typedef boost::shared_ptr< ::pro_turtlebot_s::Location_monitor const> Location_monitorConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace pro_turtlebot_s

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
<<<<<<< HEAD:catkin_ws/devel/include/pro_turtlebot_s/Location_monitor.h
// {'pro_turtlebot_s': ['/home/ros/catkin_ws/src/proTurtlebotS_turtlesimVersion/msg']}
=======
// {'level_three': ['/home/ros/catkin_ws/src/level_three/msg'], 'geometry_msgs': ['/opt/ros/indigo/share/geometry_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg']}
>>>>>>> 0a4397d857b6d8748b148ea9dda2c77306ec837e:catkin_ws/devel/include/level_three/Location_monitor.h

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e2f8ddf8c9e39a28149179429f5ae342";
  }

  static const char* value(const ::pro_turtlebot_s::Location_monitor_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe2f8ddf8c9e39a28ULL;
  static const uint64_t static_value2 = 0x149179429f5ae342ULL;
};

template<class ContainerAllocator>
struct DataType< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pro_turtlebot_s/Location_monitor";
  }

  static const char* value(const ::pro_turtlebot_s::Location_monitor_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string name\n\
float64 distance\n\
";
  }

  static const char* value(const ::pro_turtlebot_s::Location_monitor_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.distance);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Location_monitor_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pro_turtlebot_s::Location_monitor_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pro_turtlebot_s::Location_monitor_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.name);
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PRO_TURTLEBOT_S_MESSAGE_LOCATION_MONITOR_H
