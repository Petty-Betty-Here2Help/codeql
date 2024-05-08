package util

import "testing"

func TestGetImportPathFromRepoURL(t *testing.T) {
	tests := map[string]string{
		"git@github.com:github/codeql-go.git":       "github.com/github/codeql-go",
		"git@github.com:github/codeql-go":           "github.com/github/codeql-go",
		"https://github.com/github/codeql-go.git":   "github.com/github/codeql-go",
		"https://github.com:12345/github/codeql-go": "github.com/github/codeql-go",
		"gitolite@some.url:some/repo":               "some.url/some/repo",
		"file:///C:/some/path":                      "",
		"https:///no/hostname":                      "",
		"https://hostnameonly":                      "",
	}
	for input, expected := range tests {
		actual := getImportPathFromRepoURL(input)
		if actual != expected {
			t.Errorf("Expected getImportPathFromRepoURL(\"%s\") to be \"%s\", but got \"%s\".", input, expected, actual)
		}
	}
}

func TestFormatSemVer(t *testing.T) {
	type TestPair struct {
		Input    string
		Expected string
	}

	tests := []TestPair{
		{"1", "v1"},
		{"v1", "v1"},
		{"1.2.3", "v1.2.3"},
		{"v1.2.3", "v1.2.3"},
	}

	for _, pair := range tests {
		actual := FormatSemVer(pair.Input)
		if actual != pair.Expected {
			t.Errorf("Expected FormatSemVer(\"%s\") to be \"%s\", but got \"%s\".", pair.Input, pair.Expected, actual)
		}
	}
}
