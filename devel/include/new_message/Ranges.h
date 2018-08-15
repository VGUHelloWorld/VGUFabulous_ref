// Generated by gencpp from file new_message/Ranges.msg
// DO NOT EDIT!


#ifndef NEW_MESSAGE_MESSAGE_RANGES_H
#define NEW_MESSAGE_MESSAGE_RANGES_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace new_message
{
template <class ContainerAllocator>
struct Ranges_
{
  typedef Ranges_<ContainerAllocator> Type;

  Ranges_()
    : Range1(0.0)
    , Range2(0.0)
    , fusedRange(0.0)  {
    }
  Ranges_(const ContainerAllocator& _alloc)
    : Range1(0.0)
    , Range2(0.0)
    , fusedRange(0.0)  {
  (void)_alloc;
    }



   typedef float _Range1_type;
  _Range1_type Range1;

   typedef float _Range2_type;
  _Range2_type Range2;

   typedef float _fusedRange_type;
  _fusedRange_type fusedRange;





  typedef boost::shared_ptr< ::new_message::Ranges_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::new_message::Ranges_<ContainerAllocator> const> ConstPtr;

}; // struct Ranges_

typedef ::new_message::Ranges_<std::allocator<void> > Ranges;

typedef boost::shared_ptr< ::new_message::Ranges > RangesPtr;
typedef boost::shared_ptr< ::new_message::Ranges const> RangesConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::new_message::Ranges_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::new_message::Ranges_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace new_message

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'new_message': ['/home/minh_tai/SimpleTest1/src/new_message/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::new_message::Ranges_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::new_message::Ranges_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::new_message::Ranges_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::new_message::Ranges_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::new_message::Ranges_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::new_message::Ranges_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::new_message::Ranges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "8342471173ce656419074107ac44b4b4";
  }

  static const char* value(const ::new_message::Ranges_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x8342471173ce6564ULL;
  static const uint64_t static_value2 = 0x19074107ac44b4b4ULL;
};

template<class ContainerAllocator>
struct DataType< ::new_message::Ranges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "new_message/Ranges";
  }

  static const char* value(const ::new_message::Ranges_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::new_message::Ranges_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 Range1\n\
float32 Range2\n\
float32 fusedRange\n\
";
  }

  static const char* value(const ::new_message::Ranges_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::new_message::Ranges_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.Range1);
      stream.next(m.Range2);
      stream.next(m.fusedRange);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct Ranges_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::new_message::Ranges_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::new_message::Ranges_<ContainerAllocator>& v)
  {
    s << indent << "Range1: ";
    Printer<float>::stream(s, indent + "  ", v.Range1);
    s << indent << "Range2: ";
    Printer<float>::stream(s, indent + "  ", v.Range2);
    s << indent << "fusedRange: ";
    Printer<float>::stream(s, indent + "  ", v.fusedRange);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NEW_MESSAGE_MESSAGE_RANGES_H