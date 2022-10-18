package policy.release.my_demo

import data.lib

deny[result] {
	t := input.attestations[0].predicate.buildConfig.tasks[_]
	t.name == "build-container"

	v := t.invocation.parameters.TLSVERIFY
	expected := "true"
	v != expected

	result := {
		"msg": sprintf("build-container task invoked with TLSVERIFY set to %s, requires %s!", [v, expected])
	}
}
