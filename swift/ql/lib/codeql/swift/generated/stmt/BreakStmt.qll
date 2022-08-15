// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.stmt.Stmt

class BreakStmtBase extends Synth::TBreakStmt, Stmt {
  override string getAPrimaryQlClass() { result = "BreakStmt" }

  string getTargetName() {
    result = Synth::convertBreakStmtToDb(this).(Db::BreakStmt).getTargetName()
  }

  final predicate hasTargetName() { exists(getTargetName()) }

  Stmt getImmediateTarget() {
    result = Synth::convertStmtFromDb(Synth::convertBreakStmtToDb(this).(Db::BreakStmt).getTarget())
  }

  final Stmt getTarget() { result = getImmediateTarget().resolve() }

  final predicate hasTarget() { exists(getTarget()) }
}
