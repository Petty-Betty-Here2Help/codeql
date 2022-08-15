// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.AstNode
import codeql.swift.elements.type.Type

class ExprBase extends Synth::TExpr, AstNode {
  Type getImmediateType() {
    result = Synth::convertTypeFromDb(Synth::convertExprToDb(this).(Db::Expr).getType())
  }

  final Type getType() { result = getImmediateType().resolve() }

  final predicate hasType() { exists(getType()) }
}
