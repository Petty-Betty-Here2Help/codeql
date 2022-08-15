// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.expr.Expr

class KeyPathApplicationExprBase extends Synth::TKeyPathApplicationExpr, Expr {
  override string getAPrimaryQlClass() { result = "KeyPathApplicationExpr" }

  Expr getImmediateBase() {
    result =
      Synth::convertExprFromDb(Synth::convertKeyPathApplicationExprToDb(this)
            .(Db::KeyPathApplicationExpr)
            .getBase())
  }

  final Expr getBase() { result = getImmediateBase().resolve() }

  Expr getImmediateKeyPath() {
    result =
      Synth::convertExprFromDb(Synth::convertKeyPathApplicationExprToDb(this)
            .(Db::KeyPathApplicationExpr)
            .getKeyPath())
  }

  final Expr getKeyPath() { result = getImmediateKeyPath().resolve() }
}
