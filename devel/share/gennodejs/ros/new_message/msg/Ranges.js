// Auto-generated. Do not edit!

// (in-package new_message.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Ranges {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.Range1 = null;
      this.Range2 = null;
      this.fusedRange = null;
    }
    else {
      if (initObj.hasOwnProperty('Range1')) {
        this.Range1 = initObj.Range1
      }
      else {
        this.Range1 = 0.0;
      }
      if (initObj.hasOwnProperty('Range2')) {
        this.Range2 = initObj.Range2
      }
      else {
        this.Range2 = 0.0;
      }
      if (initObj.hasOwnProperty('fusedRange')) {
        this.fusedRange = initObj.fusedRange
      }
      else {
        this.fusedRange = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Ranges
    // Serialize message field [Range1]
    bufferOffset = _serializer.float32(obj.Range1, buffer, bufferOffset);
    // Serialize message field [Range2]
    bufferOffset = _serializer.float32(obj.Range2, buffer, bufferOffset);
    // Serialize message field [fusedRange]
    bufferOffset = _serializer.float32(obj.fusedRange, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Ranges
    let len;
    let data = new Ranges(null);
    // Deserialize message field [Range1]
    data.Range1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [Range2]
    data.Range2 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [fusedRange]
    data.fusedRange = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'new_message/Ranges';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8342471173ce656419074107ac44b4b4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 Range1
    float32 Range2
    float32 fusedRange
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Ranges(null);
    if (msg.Range1 !== undefined) {
      resolved.Range1 = msg.Range1;
    }
    else {
      resolved.Range1 = 0.0
    }

    if (msg.Range2 !== undefined) {
      resolved.Range2 = msg.Range2;
    }
    else {
      resolved.Range2 = 0.0
    }

    if (msg.fusedRange !== undefined) {
      resolved.fusedRange = msg.fusedRange;
    }
    else {
      resolved.fusedRange = 0.0
    }

    return resolved;
    }
};

module.exports = Ranges;
