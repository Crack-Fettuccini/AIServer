# AIServer Docker Configuration for AI-Assisted Research Communication

## File Structure
```bash
/AIServer
├── .env
├── /AICoreCoalesce
├── /AICoreConstruct
│    └── /ollama
│         ├── docker-compose.yaml
│         └── /modelfile
├── /AICoreCrawl
│    ├── /scraperr
│    │    └── docker-compose.yaml
│    └── /crawl4ai
│         └── docker-compose.yaml
├── /AICoreSync
│    ├── docker-compose.yaml
│    └── /ntfy
│         └── server.yaml
├── /AICoreFabric
└── /AICoreOrchestrator
```

## Core Components

### AICoreCoalesce
	**Purpose:**
		- Abstraction layer to summarize multiple model outputs for reliability.

### AICoreConstruct
	**Purpose:**
		- Queries model endpoints for constructing results into a whole.

	**Component Status:**
		- **Ollama:**		✅ Completed

### AICoreCrawl
	**Purpose:**
		- Web crawling and scraping websites to generate metadata for improved model understanding.

	**Component Status:**
		- **scraperr:**		✅ Completed (Removed)
		- **crawl4ai:**		🟡 Partial (New Docker Compose update Q1 2025)
		- **firecrawl:**	❌ Incomplete (Doesn't work)

### AICoreSync
	**Purpose:**
		- Notification channel to facilitate communication between AI and users for collecting user needs.

	**Component Status:**
		- **ntfy:** 		✅ Completed

### AICoreFabric
	**Purpose:**
		- Centralized documentation of AI and human actions and responses for auditing.

	**Component Status:**
		- **Doc:** 		❌ Incomplete

### AICoreOrchestrator
	**Purpose:**
		- Organizes overall model interaction with data into a singular flow.

	**Component Status:**
		- **n8n:** 		❌ Incomplete

