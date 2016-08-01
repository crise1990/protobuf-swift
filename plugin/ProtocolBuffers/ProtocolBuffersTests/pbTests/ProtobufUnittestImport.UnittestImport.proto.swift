// Generated by the Protocol Buffers 3.0 compiler.  DO NOT EDIT!
// Source file "unittest_import.proto"
// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public struct ProtobufUnittestImport { }

public func == (lhs: ProtobufUnittestImport.ImportMessage, rhs: ProtobufUnittestImport.ImportMessage) -> Bool {
  if (lhs === rhs) {
    return true
  }
  var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
  fieldCheck = fieldCheck && (lhs.hasD == rhs.hasD) && (!lhs.hasD || lhs.d == rhs.d)
  fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
  return fieldCheck
}

public extension ProtobufUnittestImport {
  public struct UnittestImportRoot {
    public static var sharedInstance : UnittestImportRoot {
     struct Static {
         static let instance : UnittestImportRoot = UnittestImportRoot()
     }
     return Static.instance
    }
    public var extensionRegistry:ExtensionRegistry

    init() {
      extensionRegistry = ExtensionRegistry()
      registerAllExtensions(registry: extensionRegistry)
      ProtobufUnittestImport.UnittestImportPublicRoot.sharedInstance.registerAllExtensions(registry: extensionRegistry)
    }
    public func registerAllExtensions(registry: ExtensionRegistry) {
    }
  }



  //Enum type declaration start 

  public enum ImportEnum:Int32, CustomDebugStringConvertible, CustomStringConvertible {
    case importFoo = 7
    case importBar = 8
    case importBaz = 9
    public func toString() -> String {
      switch self {
      case .importFoo: return "IMPORT_FOO"
      case .importBar: return "IMPORT_BAR"
      case .importBaz: return "IMPORT_BAZ"
      }
    }
    public static func fromString(str:String) throws -> ProtobufUnittestImport.ImportEnum {
      switch str {
      case "IMPORT_FOO":  return .importFoo
      case "IMPORT_BAR":  return .importBar
      case "IMPORT_BAZ":  return .importBaz
      default: throw ProtocolBuffersError.invalidProtocolBuffer("Conversion String to Enum has failed.")
      }
    }
    public var debugDescription:String { return getDescription() }
    public var description:String { return getDescription() }
    private func getDescription() -> String { 
        switch self {
            case .importFoo: return ".importFoo"
            case .importBar: return ".importBar"
            case .importBaz: return ".importBaz"
        }
    }
  }

  //Enum type declaration end 

  final public class ImportMessage : GeneratedMessage {
    public private(set) var d:Int32 = Int32(0)

    public private(set) var hasD:Bool = false
    required public init() {
         super.init()
    }
    override public func isInitialized() -> Bool {
     return true
    }
    override public func writeTo(codedOutputStream: CodedOutputStream) throws {
      if hasD {
        try codedOutputStream.writeInt32(fieldNumber: 1, value:d)
      }
      try unknownFields.writeTo(codedOutputStream: codedOutputStream)
    }
    override public func serializedSize() -> Int32 {
      var serialize_size:Int32 = memoizedSerializedSize
      if serialize_size != -1 {
       return serialize_size
      }

      serialize_size = 0
      if hasD {
        serialize_size += d.computeInt32Size(fieldNumber: 1)
      }
      serialize_size += unknownFields.serializedSize()
      memoizedSerializedSize = serialize_size
      return serialize_size
    }
    public class func getBuilder() -> ProtobufUnittestImport.ImportMessage.Builder {
      return ProtobufUnittestImport.ImportMessage.classBuilder() as! ProtobufUnittestImport.ImportMessage.Builder
    }
    public func getBuilder() -> ProtobufUnittestImport.ImportMessage.Builder {
      return classBuilder() as! ProtobufUnittestImport.ImportMessage.Builder
    }
    override public class func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessage.Builder()
    }
    override public func classBuilder() -> MessageBuilder {
      return ProtobufUnittestImport.ImportMessage.Builder()
    }
    public func toBuilder() throws -> ProtobufUnittestImport.ImportMessage.Builder {
      return try ProtobufUnittestImport.ImportMessage.builderWithPrototype(prototype:self)
    }
    public class func builderWithPrototype(prototype:ProtobufUnittestImport.ImportMessage) throws -> ProtobufUnittestImport.ImportMessage.Builder {
      return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(other:prototype)
    }
    override public func encode() throws -> Dictionary<String,AnyObject> {
      guard isInitialized() else {
        throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
      }

      var jsonMap:Dictionary<String,AnyObject> = Dictionary<String,AnyObject>()
      if hasD {
        jsonMap["d"] = NSNumber(value:d)
      }
      return jsonMap
    }
    override class public func decode(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder.decodeToBuilder(jsonMap:jsonMap).build()
    }
    override class public func fromJSON(data:Data) throws -> ProtobufUnittestImport.ImportMessage {
      return try ProtobufUnittestImport.ImportMessage.Builder.fromJSONToBuilder(data:data).build()
    }
    override public func getDescription(indent:String) throws -> String {
      var output = ""
      if hasD {
        output += "\(indent) d: \(d) \n"
      }
      output += unknownFields.getDescription(indent: indent)
      return output
    }
    override public var hashValue:Int {
        get {
            var hashCode:Int = 7
            if hasD {
               hashCode = (hashCode &* 31) &+ d.hashValue
            }
            hashCode = (hashCode &* 31) &+  unknownFields.hashValue
            return hashCode
        }
    }


    //Meta information declaration start

    override public class func className() -> String {
        return "ProtobufUnittestImport.ImportMessage"
    }
    override public func className() -> String {
        return "ProtobufUnittestImport.ImportMessage"
    }
    override public func classMetaType() -> GeneratedMessage.Type {
        return ProtobufUnittestImport.ImportMessage.self
    }
    //Meta information declaration end

    final public class Builder : GeneratedMessageBuilder {
      private var builderResult:ProtobufUnittestImport.ImportMessage = ProtobufUnittestImport.ImportMessage()
      public func getMessage() -> ProtobufUnittestImport.ImportMessage {
          return builderResult
      }

      required override public init () {
         super.init()
      }
      public var hasD:Bool {
           get {
                return builderResult.hasD
           }
      }
      public var d:Int32 {
           get {
                return builderResult.d
           }
           set (value) {
               builderResult.hasD = true
               builderResult.d = value
           }
      }
      public func setD(_ value:Int32) -> ProtobufUnittestImport.ImportMessage.Builder {
        self.d = value
        return self
      }
      public func clearD() -> ProtobufUnittestImport.ImportMessage.Builder{
           builderResult.hasD = false
           builderResult.d = Int32(0)
           return self
      }
      override public var internalGetResult:GeneratedMessage {
           get {
              return builderResult
           }
      }
      override public func clear() -> ProtobufUnittestImport.ImportMessage.Builder {
        builderResult = ProtobufUnittestImport.ImportMessage()
        return self
      }
      override public func clone() throws -> ProtobufUnittestImport.ImportMessage.Builder {
        return try ProtobufUnittestImport.ImportMessage.builderWithPrototype(prototype:builderResult)
      }
      override public func build() throws -> ProtobufUnittestImport.ImportMessage {
           try checkInitialized()
           return buildPartial()
      }
      public func buildPartial() -> ProtobufUnittestImport.ImportMessage {
        let returnMe:ProtobufUnittestImport.ImportMessage = builderResult
        return returnMe
      }
      public func mergeFrom(other:ProtobufUnittestImport.ImportMessage) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        if other == ProtobufUnittestImport.ImportMessage() {
         return self
        }
        if other.hasD {
             d = other.d
        }
        _ = try merge(unknownField: other.unknownFields)
        return self
      }
      override public func mergeFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.ImportMessage.Builder {
           return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
      }
      override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
        while (true) {
          let protobufTag = try codedInputStream.readTag()
          switch protobufTag {
          case 0: 
            self.unknownFields = try unknownFieldsBuilder.build()
            return self

          case 8:
            d = try codedInputStream.readInt32()

          default:
            if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
               unknownFields = try unknownFieldsBuilder.build()
               return self
            }
          }
        }
      }
      override class public func decodeToBuilder(jsonMap:Dictionary<String,AnyObject>) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        let resultDecodedBuilder = ProtobufUnittestImport.ImportMessage.Builder()
        if let jsonValueD = jsonMap["d"] as? NSNumber {
          resultDecodedBuilder.d = jsonValueD.int32Value
        }
        return resultDecodedBuilder
      }
      override class public func fromJSONToBuilder(data:Data) throws -> ProtobufUnittestImport.ImportMessage.Builder {
        let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
        guard let jsDataCast = jsonData as? Dictionary<String,AnyObject> else {
          throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
        }
        return try ProtobufUnittestImport.ImportMessage.Builder.decodeToBuilder(jsonMap:jsDataCast)
      }
    }

  }

}
extension ProtobufUnittestImport.ImportMessage: GeneratedMessageProtocol {
  public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<ProtobufUnittestImport.ImportMessage> {
    var mergedArray = Array<ProtobufUnittestImport.ImportMessage>()
    while let value = try parseDelimitedFrom(inputStream: inputStream) {
      mergedArray.append(value)
    }
    return mergedArray
  }
  public class func parseDelimitedFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.ImportMessage? {
    return try ProtobufUnittestImport.ImportMessage.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
  }
  public class func parseFrom(data: Data) throws -> ProtobufUnittestImport.ImportMessage {
    return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(data: data, extensionRegistry:ProtobufUnittestImport.UnittestImportRoot.sharedInstance.extensionRegistry).build()
  }
  public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
    return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(inputStream: InputStream) throws -> ProtobufUnittestImport.ImportMessage {
    return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(inputStream: inputStream).build()
  }
  public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
    return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream) throws -> ProtobufUnittestImport.ImportMessage {
    return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(codedInputStream: codedInputStream).build()
  }
  public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> ProtobufUnittestImport.ImportMessage {
    return try ProtobufUnittestImport.ImportMessage.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
  }
}

// @@protoc_insertion_point(global_scope)
