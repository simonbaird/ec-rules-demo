package policy.release.my_demo

import data.lib

deny[result] {
	true
	result := { "msg": "You shall not pass!" }
}
