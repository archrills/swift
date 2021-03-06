import APINotesTest

public struct S1 {
  public init(_ : Double) {}
  mutating public func foo1() {}
  mutating public func foo2() {}
  public static func foo3() {}
  public func foo4() {}
  public func foo5(x : Int, y: Int, z: Int) {}
}

public class C0 {
  public func foo4(a : Void?) {}
}

public class C1: C0 {
  public func foo1() {}
  public func foo2(_ : ()->()) {}
  public var CIIns1 : C1?
  public weak var CIIns2 : C1?
  public func foo3(a : ()?) {}
  public init(_ : C1) {}
}

public typealias C3 = C1

public struct NSSomestruct2 {
  public static func foo1(_ a : C3) {}
}

public class C4: NewType {}

public class C5 {
  @objc
  public dynamic func dy_foo() {}
}

@_fixed_layout
public struct C6 {}

public enum IceKind {}

public protocol P1 {}

public protocol P2 {}

public extension P1 {
  func P1Constraint() {}
}

@_fixed_layout
public struct fixedLayoutStruct {
  public var a = 1
  public func OKChange() {}
  private static let constant = 0
  public var b = 2
  public func foo() {}
  private var c = 3
  private lazy var lazy_d = 4
}

@_frozen
public enum FrozenKind {
  case Unchanged
  case Rigid
  case Fixed
  case AddedCase
}

public class C7: P1 {
  public func foo(_ a: Int, _ b: Int) {}
}

public protocol P3: P1, P4 {}

public protocol P4 {}

extension fixedLayoutStruct: P2 {}

public protocol AssociatedTypePro {
  associatedtype T1
  associatedtype T2
  associatedtype T3 = C6
}

public class RemoveSetters {
  public private(set) var Value = 4
  public subscript(_ idx: Int) -> Int {
    get { return 1 }
  }
}

public protocol RequiementChanges {
  associatedtype addedTypeWithDefault = Int
  associatedtype addedTypeWithoutDefault
  func addedFunc()
  var addedVar: Int { get }
}

public class SuperClassRemoval {}

public struct ClassToStruct {}
public enum ProtocolToEnum {}
