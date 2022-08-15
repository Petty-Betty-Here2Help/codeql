// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.type.ArchetypeType
import codeql.swift.elements.decl.AssociatedTypeDecl

class NestedArchetypeTypeBase extends Synth::TNestedArchetypeType, ArchetypeType {
  override string getAPrimaryQlClass() { result = "NestedArchetypeType" }

  ArchetypeType getImmediateParent() {
    result =
      Synth::convertArchetypeTypeFromDb(Synth::convertNestedArchetypeTypeToDb(this)
            .(Db::NestedArchetypeType)
            .getParent())
  }

  final ArchetypeType getParent() { result = getImmediateParent().resolve() }

  AssociatedTypeDecl getImmediateAssociatedTypeDeclaration() {
    result =
      Synth::convertAssociatedTypeDeclFromDb(Synth::convertNestedArchetypeTypeToDb(this)
            .(Db::NestedArchetypeType)
            .getAssociatedTypeDeclaration())
  }

  final AssociatedTypeDecl getAssociatedTypeDeclaration() {
    result = getImmediateAssociatedTypeDeclaration().resolve()
  }
}
