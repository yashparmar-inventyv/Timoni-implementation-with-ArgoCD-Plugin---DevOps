@if(!debug)
package main

values: {
	metadata: {
		name:      "creative-studio"
		namespace: "creative-studio-prod"
	}
	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest:     ""
		tag:        ""
	}
	message: "creative-studio running"
}
