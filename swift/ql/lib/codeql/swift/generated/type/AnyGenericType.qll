// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.decl.GenericTypeDecl
import codeql.swift.elements.type.Type

module Generated {
  class AnyGenericType extends Synth::TAnyGenericType, Type {
    /**
     * Gets the parent of this any generic type, if it exists.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Type getImmediateParent() {
      result =
        Synth::convertTypeFromRaw(Synth::convertAnyGenericTypeToRaw(this)
              .(Raw::AnyGenericType)
              .getParent())
    }

    /**
     * Gets the parent of this any generic type, if it exists.
     */
    final Type getParent() {
      exists(Type immediate |
        immediate = this.getImmediateParent() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }

    /**
     * Holds if `getParent()` exists.
     */
    final predicate hasParent() { exists(this.getParent()) }

    /**
     * Gets the declaration of this any generic type.
     */
    GenericTypeDecl getDeclaration() {
      result =
        Synth::convertGenericTypeDeclFromRaw(Synth::convertAnyGenericTypeToRaw(this)
              .(Raw::AnyGenericType)
              .getDeclaration())
    }
  }
}
