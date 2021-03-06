// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to machine.stencil instead.

import CoreData
import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length
// swiftlint:disable type_body_length
// swiftlint:disable vertical_whitespace
// swiftlint:disable implicit_return
public enum ScalarTypesClassAttributes: String {
    case boolean
    case double
    case float
    case int16
    case int32
    case int64
}

public enum ScalarTypesClassRelationships: String {
    case numerics
}

public enum ScalarTypesClassFetchedProperties: String {
    case eqTrue
    case gt100

    public var predicateString: String {
        switch self {
        case .eqTrue:
            return "boolean == YES"
        case .gt100:
            return "int16 > 100"
        }
    }

    public var entityName: String {
        switch self {
        case .eqTrue:
            return "ScalarTypes"
        case .gt100:
            return "ScalarTypes"
        }
    }
}

// swiftlint:disable type_name
public class _ScalarTypesClass: NSManagedObject {
    @objc public class var entityName: String {
        return "ScalarTypes"
    }

    @NSManaged public var boolean: Bool
    @NSManaged public var double: Double
    @NSManaged public var float: Float
    @NSManaged public var int16: Int16
    @NSManaged public var int32: Int32
    @NSManaged public var int64: Int64

    @NSManaged public var numerics: NumericTypesClass
}
