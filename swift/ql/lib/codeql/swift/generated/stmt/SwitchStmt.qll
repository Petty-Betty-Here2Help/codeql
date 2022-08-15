// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.stmt.CaseStmt
import codeql.swift.elements.expr.Expr
import codeql.swift.elements.stmt.LabeledStmt

class SwitchStmtBase extends Synth::TSwitchStmt, LabeledStmt {
  override string getAPrimaryQlClass() { result = "SwitchStmt" }

  Expr getImmediateExpr() {
    result = Synth::convertExprFromDb(Synth::convertSwitchStmtToDb(this).(Db::SwitchStmt).getExpr())
  }

  final Expr getExpr() { result = getImmediateExpr().resolve() }

  CaseStmt getImmediateCase(int index) {
    result =
      Synth::convertCaseStmtFromDb(Synth::convertSwitchStmtToDb(this)
            .(Db::SwitchStmt)
            .getCase(index))
  }

  final CaseStmt getCase(int index) { result = getImmediateCase(index).resolve() }

  final CaseStmt getACase() { result = getCase(_) }

  final int getNumberOfCases() { result = count(getACase()) }
}
