@if(!debug)

package main

values: {

	metadata: {
		// Make `name` flexible so Timoni's `@tag(name)` default (e.g. "default")
		// doesn't conflict during `timoni mod vet`.
		name:      *"creative-studio" | string
		namespace: *"creative-studio-prod" | string
	}

	app: "creative-studio"

	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
        digest: "sha256:44decea1749f19b3834abc490657b8abc7bca811268c4eab9d235bc395432dc8"
		tag: ""
	}

	replicas: 2

	service: {
		port: 5000
		nodePort: 32000
	}

	strategy: {
		maxUnavailable: 1
		maxSurge:       1
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
