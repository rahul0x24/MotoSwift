// DO NOT EDIT. This file is machine-generated and constantly overwritten.
// Make changes to model.stencil instead.

import Foundation

// swiftlint:disable superfluous_disable_command
// swiftlint:disable file_length
// swiftlint:disable type_body_length
// swiftlint:disable nesting
public struct CoreDataEntity {
   public struct AllTypes {
      public static let name = "AllTypes"

      public class Field: NumericTypes.Field {
         public static let data = "data"
         public static let date = "date"
         public static let string = "string"
         public static let transformable = "transformable"
         public static let properties = "properties"
      }
   }
   public struct NumericTypes {
      public static let name = "NumericTypes"

      public class Field {
         public static let boolean = "boolean"
         public static let decimal = "decimal"
         public static let double = "double"
         public static let float = "float"
         public static let int16 = "int16"
         public static let int32 = "int32"
         public static let int64 = "int64"
         public static let scalars = "scalars"
      }
   }
   public struct Property {
      public static let name = "Property"

      public class Field {
         public static let name = "name"
         public static let value = "value"
         public static let types = "types"
      }
   }
   public struct ScalarTypes {
      public static let name = "ScalarTypes"

      public class Field {
         public static let boolean = "boolean"
         public static let double = "double"
         public static let float = "float"
         public static let int16 = "int16"
         public static let int32 = "int32"
         public static let int64 = "int64"
         public static let numerics = "numerics"
         public static let eqTrue = "eqTrue"
         public static let gt100 = "gt100"
      }
   }
}
