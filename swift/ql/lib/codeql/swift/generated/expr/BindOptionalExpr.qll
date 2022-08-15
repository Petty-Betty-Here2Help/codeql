// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.Expr

class BindOptionalExprBase extends Synth::TBindOptionalExpr, Expr {
  override string getAPrimaryQlClass() { result = "BindOptionalExpr" }

  Expr getImmediateSubExpr() {
    result =
      Synth::convertExprFromDb(Synth::convertBindOptionalExprToDb(this)
            .(Db::BindOptionalExpr)
            .getSubExpr())
  }

  final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }
}
