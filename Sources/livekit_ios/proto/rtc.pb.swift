// DO NOT EDIT.
// swift-format-ignore-file
//
// Generated by the Swift generator plugin for the protocol buffer compiler.
// Source: rtc.proto
//
// For information on using the generated types, please see the documentation:
//   https://github.com/apple/swift-protobuf/

import Foundation
import SwiftProtobuf

// If the compiler emits an error on this type, it is because this file
// was generated by a version of the `protoc` Swift plug-in that is
// incompatible with the version of SwiftProtobuf to which you are linking.
// Please ensure that you are building against the same version of the API
// that was used to generate this file.
fileprivate struct _GeneratedWithProtocGenSwiftVersion: SwiftProtobuf.ProtobufAPIVersionCheck {
  struct _2: SwiftProtobuf.ProtobufAPIVersion_2 {}
  typealias Version = _2
}

struct Livekit_SignalRequest {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var message: Livekit_SignalRequest.OneOf_Message? = nil

  var offer: Livekit_SessionDescription {
    get {
      if case .offer(let v)? = message {return v}
      return Livekit_SessionDescription()
    }
    set {message = .offer(newValue)}
  }

  var negotiate: Livekit_SessionDescription {
    get {
      if case .negotiate(let v)? = message {return v}
      return Livekit_SessionDescription()
    }
    set {message = .negotiate(newValue)}
  }

  var trickle: Livekit_Trickle {
    get {
      if case .trickle(let v)? = message {return v}
      return Livekit_Trickle()
    }
    set {message = .trickle(newValue)}
  }

  var control: Livekit_MediaControl {
    get {
      if case .control(let v)? = message {return v}
      return Livekit_MediaControl()
    }
    set {message = .control(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Message: Equatable {
    case offer(Livekit_SessionDescription)
    case negotiate(Livekit_SessionDescription)
    case trickle(Livekit_Trickle)
    case control(Livekit_MediaControl)

  #if !swift(>=4.1)
    static func ==(lhs: Livekit_SignalRequest.OneOf_Message, rhs: Livekit_SignalRequest.OneOf_Message) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.offer, .offer): return {
        guard case .offer(let l) = lhs, case .offer(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.negotiate, .negotiate): return {
        guard case .negotiate(let l) = lhs, case .negotiate(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.trickle, .trickle): return {
        guard case .trickle(let l) = lhs, case .trickle(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.control, .control): return {
        guard case .control(let l) = lhs, case .control(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

struct Livekit_SignalResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var message: Livekit_SignalResponse.OneOf_Message? = nil

  /// sent when join is accepted
  var join: Livekit_JoinResponse {
    get {
      if case .join(let v)? = message {return v}
      return Livekit_JoinResponse()
    }
    set {message = .join(newValue)}
  }

  /// sent when offer is answered
  var answer: Livekit_SessionDescription {
    get {
      if case .answer(let v)? = message {return v}
      return Livekit_SessionDescription()
    }
    set {message = .answer(newValue)}
  }

  /// sent when a negotiated sd is available (could be either offer or answer)
  var negotiate: Livekit_SessionDescription {
    get {
      if case .negotiate(let v)? = message {return v}
      return Livekit_SessionDescription()
    }
    set {message = .negotiate(newValue)}
  }

  /// sent when an ICE candidate is available
  var trickle: Livekit_Trickle {
    get {
      if case .trickle(let v)? = message {return v}
      return Livekit_Trickle()
    }
    set {message = .trickle(newValue)}
  }

  /// sent when participants in the room has changed
  var update: Livekit_ParticipantUpdate {
    get {
      if case .update(let v)? = message {return v}
      return Livekit_ParticipantUpdate()
    }
    set {message = .update(newValue)}
  }

  var unknownFields = SwiftProtobuf.UnknownStorage()

  enum OneOf_Message: Equatable {
    /// sent when join is accepted
    case join(Livekit_JoinResponse)
    /// sent when offer is answered
    case answer(Livekit_SessionDescription)
    /// sent when a negotiated sd is available (could be either offer or answer)
    case negotiate(Livekit_SessionDescription)
    /// sent when an ICE candidate is available
    case trickle(Livekit_Trickle)
    /// sent when participants in the room has changed
    case update(Livekit_ParticipantUpdate)

  #if !swift(>=4.1)
    static func ==(lhs: Livekit_SignalResponse.OneOf_Message, rhs: Livekit_SignalResponse.OneOf_Message) -> Bool {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch (lhs, rhs) {
      case (.join, .join): return {
        guard case .join(let l) = lhs, case .join(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.answer, .answer): return {
        guard case .answer(let l) = lhs, case .answer(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.negotiate, .negotiate): return {
        guard case .negotiate(let l) = lhs, case .negotiate(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.trickle, .trickle): return {
        guard case .trickle(let l) = lhs, case .trickle(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      case (.update, .update): return {
        guard case .update(let l) = lhs, case .update(let r) = rhs else { preconditionFailure() }
        return l == r
      }()
      default: return false
      }
    }
  #endif
  }

  init() {}
}

struct Livekit_Trickle {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var candidateInit: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Livekit_SessionDescription {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  /// "answer" | "offer" | "pranswer" | "rollback"
  var type: String = String()

  var sdp: String = String()

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Livekit_JoinResponse {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var participant: Livekit_ParticipantInfo {
    get {return _participant ?? Livekit_ParticipantInfo()}
    set {_participant = newValue}
  }
  /// Returns true if `participant` has been explicitly set.
  var hasParticipant: Bool {return self._participant != nil}
  /// Clears the value of `participant`. Subsequent reads from it will return its default value.
  mutating func clearParticipant() {self._participant = nil}

  var otherParticipants: [Livekit_ParticipantInfo] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}

  fileprivate var _participant: Livekit_ParticipantInfo? = nil
}

struct Livekit_MediaControl {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

struct Livekit_ParticipantUpdate {
  // SwiftProtobuf.Message conformance is added in an extension below. See the
  // `Message` and `Message+*Additions` files in the SwiftProtobuf library for
  // methods supported on all messages.

  var participants: [Livekit_ParticipantInfo] = []

  var unknownFields = SwiftProtobuf.UnknownStorage()

  init() {}
}

// MARK: - Code below here is support for the SwiftProtobuf runtime.

fileprivate let _protobuf_package = "livekit"

extension Livekit_SignalRequest: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SignalRequest"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "offer"),
    2: .same(proto: "negotiate"),
    3: .same(proto: "trickle"),
    4: .same(proto: "control"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Livekit_SessionDescription?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .offer(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .offer(v)}
      }()
      case 2: try {
        var v: Livekit_SessionDescription?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .negotiate(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .negotiate(v)}
      }()
      case 3: try {
        var v: Livekit_Trickle?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .trickle(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .trickle(v)}
      }()
      case 4: try {
        var v: Livekit_MediaControl?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .control(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .control(v)}
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.message {
    case .offer?: try {
      guard case .offer(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .negotiate?: try {
      guard case .negotiate(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .trickle?: try {
      guard case .trickle(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .control?: try {
      guard case .control(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_SignalRequest, rhs: Livekit_SignalRequest) -> Bool {
    if lhs.message != rhs.message {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_SignalResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SignalResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "join"),
    2: .same(proto: "answer"),
    3: .same(proto: "negotiate"),
    4: .same(proto: "trickle"),
    5: .same(proto: "update"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try {
        var v: Livekit_JoinResponse?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .join(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .join(v)}
      }()
      case 2: try {
        var v: Livekit_SessionDescription?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .answer(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .answer(v)}
      }()
      case 3: try {
        var v: Livekit_SessionDescription?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .negotiate(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .negotiate(v)}
      }()
      case 4: try {
        var v: Livekit_Trickle?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .trickle(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .trickle(v)}
      }()
      case 5: try {
        var v: Livekit_ParticipantUpdate?
        if let current = self.message {
          try decoder.handleConflictingOneOf()
          if case .update(let m) = current {v = m}
        }
        try decoder.decodeSingularMessageField(value: &v)
        if let v = v {self.message = .update(v)}
      }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    // The use of inline closures is to circumvent an issue where the compiler
    // allocates stack space for every case branch when no optimizations are
    // enabled. https://github.com/apple/swift-protobuf/issues/1034
    switch self.message {
    case .join?: try {
      guard case .join(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }()
    case .answer?: try {
      guard case .answer(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 2)
    }()
    case .negotiate?: try {
      guard case .negotiate(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 3)
    }()
    case .trickle?: try {
      guard case .trickle(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 4)
    }()
    case .update?: try {
      guard case .update(let v)? = self.message else { preconditionFailure() }
      try visitor.visitSingularMessageField(value: v, fieldNumber: 5)
    }()
    case nil: break
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_SignalResponse, rhs: Livekit_SignalResponse) -> Bool {
    if lhs.message != rhs.message {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_Trickle: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".Trickle"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "candidateInit"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.candidateInit) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.candidateInit.isEmpty {
      try visitor.visitSingularStringField(value: self.candidateInit, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_Trickle, rhs: Livekit_Trickle) -> Bool {
    if lhs.candidateInit != rhs.candidateInit {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_SessionDescription: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".SessionDescription"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "type"),
    2: .same(proto: "sdp"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularStringField(value: &self.type) }()
      case 2: try { try decoder.decodeSingularStringField(value: &self.sdp) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.type.isEmpty {
      try visitor.visitSingularStringField(value: self.type, fieldNumber: 1)
    }
    if !self.sdp.isEmpty {
      try visitor.visitSingularStringField(value: self.sdp, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_SessionDescription, rhs: Livekit_SessionDescription) -> Bool {
    if lhs.type != rhs.type {return false}
    if lhs.sdp != rhs.sdp {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_JoinResponse: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".JoinResponse"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "participant"),
    2: .standard(proto: "other_participants"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeSingularMessageField(value: &self._participant) }()
      case 2: try { try decoder.decodeRepeatedMessageField(value: &self.otherParticipants) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if let v = self._participant {
      try visitor.visitSingularMessageField(value: v, fieldNumber: 1)
    }
    if !self.otherParticipants.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.otherParticipants, fieldNumber: 2)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_JoinResponse, rhs: Livekit_JoinResponse) -> Bool {
    if lhs._participant != rhs._participant {return false}
    if lhs.otherParticipants != rhs.otherParticipants {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_MediaControl: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".MediaControl"
  static let _protobuf_nameMap = SwiftProtobuf._NameMap()

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let _ = try decoder.nextFieldNumber() {
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_MediaControl, rhs: Livekit_MediaControl) -> Bool {
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}

extension Livekit_ParticipantUpdate: SwiftProtobuf.Message, SwiftProtobuf._MessageImplementationBase, SwiftProtobuf._ProtoNameProviding {
  static let protoMessageName: String = _protobuf_package + ".ParticipantUpdate"
  static let _protobuf_nameMap: SwiftProtobuf._NameMap = [
    1: .same(proto: "participants"),
  ]

  mutating func decodeMessage<D: SwiftProtobuf.Decoder>(decoder: inout D) throws {
    while let fieldNumber = try decoder.nextFieldNumber() {
      // The use of inline closures is to circumvent an issue where the compiler
      // allocates stack space for every case branch when no optimizations are
      // enabled. https://github.com/apple/swift-protobuf/issues/1034
      switch fieldNumber {
      case 1: try { try decoder.decodeRepeatedMessageField(value: &self.participants) }()
      default: break
      }
    }
  }

  func traverse<V: SwiftProtobuf.Visitor>(visitor: inout V) throws {
    if !self.participants.isEmpty {
      try visitor.visitRepeatedMessageField(value: self.participants, fieldNumber: 1)
    }
    try unknownFields.traverse(visitor: &visitor)
  }

  static func ==(lhs: Livekit_ParticipantUpdate, rhs: Livekit_ParticipantUpdate) -> Bool {
    if lhs.participants != rhs.participants {return false}
    if lhs.unknownFields != rhs.unknownFields {return false}
    return true
  }
}
