// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Raw
import codeql.swift.elements.expr.Expr

module Generated {
  class BindOptionalExpr extends Synth::TBindOptionalExpr, Expr {
    override string getAPrimaryQlClass() { result = "BindOptionalExpr" }

    /**
     * Gets the sub expression of this bind optional expression.
     *
     * This includes nodes from the "hidden" AST. It can be overridden in subclasses to change the
     * behavior of both the `Immediate` and non-`Immediate` versions.
     */
    Expr getImmediateSubExpr() {
      result =
        Synth::convertExprFromRaw(Synth::convertBindOptionalExprToRaw(this)
              .(Raw::BindOptionalExpr)
              .getSubExpr())
    }

    /**
     * Gets the sub expression of this bind optional expression.
     */
    final Expr getSubExpr() {
      exists(Expr immediate |
        immediate = this.getImmediateSubExpr() and
        if exists(this.getResolveStep()) then result = immediate else result = immediate.resolve()
      )
    }
  }
}
