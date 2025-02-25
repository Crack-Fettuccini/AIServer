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

## System Workflow
	1. **AICoreFabric** records user problems or mission statements, acting as the central repository for AI and user interactions.
	2. **AICoreConstruct** queries various AI model endpoints to generate relevant responses based on the problem definition.
	3. **AICoreCoalesce** processes the multiple model outputs, analyzing and synthesizing them into a reliable and actionable result.
	4. **AICoreSync** manages communication with the user, sending notifications and collecting additional input when required.
	5. User responses and additional context are updated in **AICoreFabric**, ensuring an evolving and dynamic research process.
	6. **AICoreOrchestrator** oversees the entire workflow, ensuring data flows efficiently between components.

## Core Components
### AICoreFabric
	**Purpose:**
		- Centralized repository for user-defined problems, AI-generated responses, and interactions.
		- Tracks progress and refines AI outputs based on evolving needs.

	**Component Status:**
		- **Doc:** 		❌ Incomplete

### AICoreConstruct
	**Purpose:**
		- Queries multiple AI models to generate insights, responses, and potential solutions based on user queries.

	**Component Status:**
		- **Ollama:** 		✅ Completed

### AICoreCoalesce
	**Purpose:**
		- Aggregates, analyzes, and synthesizes multiple AI model outputs.
		- Ensures reliability, consistency, and coherence in the final response.
		- Plans code execution or additional analyses based on AI findings.

### AICoreSync
	**Purpose:**
		- Manages interactions between AI and the user.
		- Sends notifications and requests clarifications or additional input from the user.
		- Updates user responses back into **AICoreFabric** to refine the research process.

	**Component Status:**
		- **ntfy:** 		✅ Completed

### AICoreCrawl
	**Purpose:**
		- Gathers external data via web crawling and scraping to enhance AI-generated insights.
		- Provides metadata that improves AI understanding of the context.

	**Component Status:**
		- **scraperr:** 	✅ Completed (Removed)
		- **crawl4ai:** 	🟡 Partial (New Docker Compose update Q1 2025)
		- **firecrawl:** 	❌ Incomplete (Doesn't work)

### AICoreOrchestrator
	**Purpose:**
		- Oversees and manages the flow of data between components.
		- Ensures a structured and automated approach to problem-solving.

	**Component Status:**
		- **n8n:** 		❌ Incomplete
