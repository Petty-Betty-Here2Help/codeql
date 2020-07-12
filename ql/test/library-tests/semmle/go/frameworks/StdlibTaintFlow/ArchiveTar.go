// WARNING: This file was automatically generated. DO NOT EDIT.

package main

import (
	"archive/tar"
	"io"
	"os"
)

func TaintStepTest_ArchiveTarFileInfoHeader_B0I0O0(sourceCQL interface{}) interface{} {
	fromFileInfo656 := sourceCQL.(os.FileInfo)
	intoHeader414, _ := tar.FileInfoHeader(fromFileInfo656, "")
	return intoHeader414
}

func TaintStepTest_ArchiveTarNewReader_B0I0O0(sourceCQL interface{}) interface{} {
	fromReader518 := sourceCQL.(io.Reader)
	intoReader650 := tar.NewReader(fromReader518)
	return intoReader650
}

func TaintStepTest_ArchiveTarNewWriter_B0I0O0(sourceCQL interface{}) interface{} {
	fromWriter784 := sourceCQL.(*tar.Writer)
	var intoWriter957 io.Writer
	intermediateCQL := tar.NewWriter(intoWriter957)
	link(fromWriter784, intermediateCQL)
	return intoWriter957
}

func TaintStepTest_ArchiveTarHeaderFileInfo_B0I0O0(sourceCQL interface{}) interface{} {
	fromHeader520 := sourceCQL.(tar.Header)
	intoFileInfo443 := fromHeader520.FileInfo()
	return intoFileInfo443
}

func TaintStepTest_ArchiveTarReaderNext_B0I0O0(sourceCQL interface{}) interface{} {
	fromReader127 := sourceCQL.(tar.Reader)
	intoHeader483, _ := fromReader127.Next()
	return intoHeader483
}

func TaintStepTest_ArchiveTarReaderRead_B0I0O0(sourceCQL interface{}) interface{} {
	fromReader989 := sourceCQL.(tar.Reader)
	var intoByte982 []byte
	fromReader989.Read(intoByte982)
	return intoByte982
}

func TaintStepTest_ArchiveTarWriterWrite_B0I0O0(sourceCQL interface{}) interface{} {
	fromByte417 := sourceCQL.([]byte)
	var intoWriter584 tar.Writer
	intoWriter584.Write(fromByte417)
	return intoWriter584
}

func TaintStepTest_ArchiveTarWriterWriteHeader_B0I0O0(sourceCQL interface{}) interface{} {
	fromHeader991 := sourceCQL.(*tar.Header)
	var intoWriter881 tar.Writer
	intoWriter881.WriteHeader(fromHeader991)
	return intoWriter881
}

func RunAllTaints_ArchiveTar() {
	{
		source := newSource(0)
		out := TaintStepTest_ArchiveTarFileInfoHeader_B0I0O0(source)
		sink(0, out)
	}
	{
		source := newSource(1)
		out := TaintStepTest_ArchiveTarNewReader_B0I0O0(source)
		sink(1, out)
	}
	{
		source := newSource(2)
		out := TaintStepTest_ArchiveTarNewWriter_B0I0O0(source)
		sink(2, out)
	}
	{
		source := newSource(3)
		out := TaintStepTest_ArchiveTarHeaderFileInfo_B0I0O0(source)
		sink(3, out)
	}
	{
		source := newSource(4)
		out := TaintStepTest_ArchiveTarReaderNext_B0I0O0(source)
		sink(4, out)
	}
	{
		source := newSource(5)
		out := TaintStepTest_ArchiveTarReaderRead_B0I0O0(source)
		sink(5, out)
	}
	{
		source := newSource(6)
		out := TaintStepTest_ArchiveTarWriterWrite_B0I0O0(source)
		sink(6, out)
	}
	{
		source := newSource(7)
		out := TaintStepTest_ArchiveTarWriterWriteHeader_B0I0O0(source)
		sink(7, out)
	}
}
