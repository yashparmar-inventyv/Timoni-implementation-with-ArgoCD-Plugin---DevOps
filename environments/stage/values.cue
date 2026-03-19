@if(!debug)

package main

values: {
	metadata: {
		namespace: "creative-studio-stage"
	}

	app: "creative-studio"

	image: {
		repository: "demo.goharbor.io/creative-studio/creative-studio"
		digest:     "sha256:85e23d023365d121ab6ae38c4da44117f3f3758c6e0ec0bc9dc52f1f29ceb8a0"
		tag: ""
	}

	replicas: 2

	service: {
		port: 5000
		nodePort: 32001
	}

	strategy: {
		maxUnavailable: 1
		maxSurge:       1
		minReadySeconds: 10
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

	message: "creative studio running (staging)"
}
