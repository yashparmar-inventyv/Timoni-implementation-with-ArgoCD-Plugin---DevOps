@if(!debug)
package main

values: {
	metadata: {
		name:      "creative-studio-prod"
		namespace: "creative-studio-prod"
	}
	app: "creative-studio"
	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest:     "sha256:d9ec0d8b5bf884cfa104972a242c0fb62c43db5fbf410c8b3e3f2b5a7ab8e079"
		tag:        ""
	}
	replicas: 3
	service: {
		port:     5000
		nodePort: 32000
	}
	strategy: {
		maxUnavailable:  1
		maxSurge:        1
		minReadySeconds: 5
	}
	resources: {
		requests: {
			cpu:    "200m"
			memory: "256Mi"
		}
		limits: {
			cpu:    "400m"
			memory: "512Mi"
		}
	}
	quota: {
		requests: {
			cpu:    "800m"
			memory: "768Mi"
		}
		limits: {
			cpu:    "1500m"
			memory: "1.5Gi"
		}
		pods: "10"
	}
	limits: {
		default: {
			cpu:    "400m"
			memory: "512Mi"
		}
		defaultRequest: {
			cpu:    "150m"
			memory: "256Mi"
		}
	}
	storage: {
		enabled: true
		size:    "1Gi"
		class:   "local-path"
	}
	message: "creative studio running (prod)"
}
