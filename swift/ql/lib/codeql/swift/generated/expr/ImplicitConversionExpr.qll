// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.Expr

class ImplicitConversionExprBase extends Synth::TImplicitConversionExpr, Expr {
  Expr getImmediateSubExpr() {
    result =
      Synth::convertExprFromDb(Synth::convertImplicitConversionExprToDb(this)
            .(Db::ImplicitConversionExpr)
            .getSubExpr())
  }

  final Expr getSubExpr() { result = getImmediateSubExpr().resolve() }
}
