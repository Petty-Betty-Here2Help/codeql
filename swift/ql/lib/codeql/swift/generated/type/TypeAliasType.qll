// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.type.SugarType
import codeql.swift.elements.decl.TypeAliasDecl

module Generated {
  class TypeAliasType extends Synth::TTypeAliasType, SugarType {
    override string getAPrimaryQlClass() { result = "TypeAliasType" }

    /**
     * Gets the declaration of this type alias type.
     */
    TypeAliasDecl getDecl() {
      result =
        Synth::convertTypeAliasDeclFromRaw(Synth::convertTypeAliasTypeToRaw(this)
              .(Raw::TypeAliasType)
              .getDecl())
    }
  }
}
