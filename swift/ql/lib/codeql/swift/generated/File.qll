// generated by codegen/codegen.py
private import codeql.swift.generated.Synth
private import codeql.swift.generated.Db
import codeql.swift.elements.Element

class FileBase extends Synth::TFile, Element {
  string getName() { result = Synth::convertFileToDb(this).(Db::File).getName() }
}
