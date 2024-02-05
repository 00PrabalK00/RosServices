// Auto-generated. Do not edit!

// (in-package base_joy_controller_pkg.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class modesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.mode = null;
    }
    else {
      if (initObj.hasOwnProperty('mode')) {
        this.mode = initObj.mode
      }
      else {
        this.mode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type modesRequest
    // Serialize message field [mode]
    bufferOffset = _serializer.string(obj.mode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type modesRequest
    let len;
    let data = new modesRequest(null);
    // Deserialize message field [mode]
    data.mode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.mode);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'base_joy_controller_pkg/modesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e84dc3ad5dc323bb64f0aca01c2d1eef';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string mode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new modesRequest(null);
    if (msg.mode !== undefined) {
      resolved.mode = msg.mode;
    }
    else {
      resolved.mode = ''
    }

    return resolved;
    }
};

class modesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.currmode = null;
    }
    else {
      if (initObj.hasOwnProperty('currmode')) {
        this.currmode = initObj.currmode
      }
      else {
        this.currmode = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type modesResponse
    // Serialize message field [currmode]
    bufferOffset = _serializer.string(obj.currmode, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type modesResponse
    let len;
    let data = new modesResponse(null);
    // Deserialize message field [currmode]
    data.currmode = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.currmode);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'base_joy_controller_pkg/modesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3154883b4f10b319a4642ede3be2af2e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string currmode
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new modesResponse(null);
    if (msg.currmode !== undefined) {
      resolved.currmode = msg.currmode;
    }
    else {
      resolved.currmode = ''
    }

    return resolved;
    }
};

module.exports = {
  Request: modesRequest,
  Response: modesResponse,
  md5sum() { return '2bc158173e2185ec21215d46ee65d595'; },
  datatype() { return 'base_joy_controller_pkg/modes'; }
};
