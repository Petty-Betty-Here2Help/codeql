// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.stmt.BraceStmt
import codeql.swift.elements.decl.Decl

class TopLevelCodeDeclBase extends Synth::TTopLevelCodeDecl, Decl {
  override string getAPrimaryQlClass() { result = "TopLevelCodeDecl" }

  BraceStmt getImmediateBody() {
    result =
      Synth::convertBraceStmtFromDb(Synth::convertTopLevelCodeDeclToDb(this)
            .(Db::TopLevelCodeDecl)
            .getBody())
  }

  final BraceStmt getBody() { result = getImmediateBody().resolve() }
}
