// Generated by gencpp from file base_joy_controller_pkg/adcmRequest.msg
// DO NOT EDIT!


#ifndef BASE_JOY_CONTROLLER_PKG_MESSAGE_ADCMREQUEST_H
#define BASE_JOY_CONTROLLER_PKG_MESSAGE_ADCMREQUEST_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace base_joy_controller_pkg
{
template <class ContainerAllocator>
struct adcmRequest_
{
  typedef adcmRequest_<ContainerAllocator> Type;

  adcmRequest_()
    : state(false)  {
    }
  adcmRequest_(const ContainerAllocator& _alloc)
    : state(false)  {
  (void)_alloc;
    }



   typedef uint8_t _state_type;
  _state_type state;





  typedef boost::shared_ptr< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> const> ConstPtr;

}; // struct adcmRequest_

typedef ::base_joy_controller_pkg::adcmRequest_<std::allocator<void> > adcmRequest;

typedef boost::shared_ptr< ::base_joy_controller_pkg::adcmRequest > adcmRequestPtr;
typedef boost::shared_ptr< ::base_joy_controller_pkg::adcmRequest const> adcmRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator1> & lhs, const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator2> & rhs)
{
  return lhs.state == rhs.state;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator1> & lhs, const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace base_joy_controller_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "001fde3cab9e313a150416ff09c08ee4";
  }

  static const char* value(const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x001fde3cab9e313aULL;
  static const uint64_t static_value2 = 0x150416ff09c08ee4ULL;
};

template<class ContainerAllocator>
struct DataType< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "base_joy_controller_pkg/adcmRequest";
  }

  static const char* value(const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool state\n"
;
  }

  static const char* value(const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.state);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct adcmRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::base_joy_controller_pkg::adcmRequest_<ContainerAllocator>& v)
  {
    s << indent << "state: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.state);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASE_JOY_CONTROLLER_PKG_MESSAGE_ADCMREQUEST_H