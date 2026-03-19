@if(!debug)

package main

values: {
	metadata: {
		namespace: "creative-studio-beta"
	}

	app: "creative-studio"

	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest:     "sha256:e8cf88c8aa8a94e68ed2df00679adbf1bfb36b5ba19bf1fa5c29ba2d0c9009d7"
		tag: ""
	}

	replicas: 1

	service: {
		port: 5000
		nodePort: 32002
	}

	strategy: {
		maxUnavailable: 0
		maxSurge:       1
		minReadySeconds: 2
	}

	resources: {
		requests: {
			cpu:    "100m"
			memory: "128Mi"
		}
		limits: {
			cpu:    "250m"
			memory: "256Mi"
		}
	}

	quota: {
		requests: {
			cpu:    "400m"
			memory: "512Mi"
		}
		limits: {
			cpu:    "800m"
			memory: "1Gi"
		}
		pods: "5"
	}

	limits: {
		default: {
			cpu:    "250m"
			memory: "256Mi"
		}
		defaultRequest: {
			cpu:    "100m"
			memory: "128Mi"
		}
	}

	storage: {
		enabled: false
		size:    "512Mi"
		class:   "local-path"
	}

	message: "creative studio running (beta)"
}
