// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.decl.NominalTypeDecl

class StructDeclBase extends Synth::TStructDecl, NominalTypeDecl {
  override string getAPrimaryQlClass() { result = "StructDecl" }
}
