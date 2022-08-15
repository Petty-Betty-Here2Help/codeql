// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.Expr

class OneWayExprBase extends Synth::TOneWayExpr, Expr {
  override string getAPrimaryQlClass() { result = "OneWayExpr" }

  Expr getImmediateSubExpr() {
    result =
      Synth::convertExprFromDb(Synth::convertOneWayExprToDb(this).(Db::OneWayExpr).getSubExpr())
  }

  final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }
}
