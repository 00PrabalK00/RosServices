// Generated by gencpp from file base_joy_controller_pkg/adcmResponse.msg
// DO NOT EDIT!


#ifndef BASE_JOY_CONTROLLER_PKG_MESSAGE_ADCMRESPONSE_H
#define BASE_JOY_CONTROLLER_PKG_MESSAGE_ADCMRESPONSE_H


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
struct adcmResponse_
{
  typedef adcmResponse_<ContainerAllocator> Type;

  adcmResponse_()
    : arm(false)  {
    }
  adcmResponse_(const ContainerAllocator& _alloc)
    : arm(false)  {
  (void)_alloc;
    }



   typedef uint8_t _arm_type;
  _arm_type arm;





  typedef boost::shared_ptr< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> const> ConstPtr;

}; // struct adcmResponse_

typedef ::base_joy_controller_pkg::adcmResponse_<std::allocator<void> > adcmResponse;

typedef boost::shared_ptr< ::base_joy_controller_pkg::adcmResponse > adcmResponsePtr;
typedef boost::shared_ptr< ::base_joy_controller_pkg::adcmResponse const> adcmResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator1> & lhs, const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator2> & rhs)
{
  return lhs.arm == rhs.arm;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator1> & lhs, const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace base_joy_controller_pkg

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "2ac5db510c2f9135f545febefbebd09b";
  }

  static const char* value(const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x2ac5db510c2f9135ULL;
  static const uint64_t static_value2 = 0xf545febefbebd09bULL;
};

template<class ContainerAllocator>
struct DataType< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "base_joy_controller_pkg/adcmResponse";
  }

  static const char* value(const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool arm\n"
"\n"
"\n"
"\n"
;
  }

  static const char* value(const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.arm);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct adcmResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::base_joy_controller_pkg::adcmResponse_<ContainerAllocator>& v)
  {
    s << indent << "arm: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.arm);
  }
};

} // namespace message_operations
} // namespace ros

#endif // BASE_JOY_CONTROLLER_PKG_MESSAGE_ADCMRESPONSE_H
