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
1. **AICoreFabric**
	- Records user-defined problems or mission statements.
	- Acts as a centralized repository for documenting all AI and user interactions.
	- Implements security and audit logging to maintain a complete record of actions and decisions.
2. **AICoreConstruct**
	- Queries various AI model endpoints (acting as specialized agents) to generate insights and potential solutions based on the problem definition.
3. **AICoreCoalesce**
	- Aggregates, analyzes, and synthesizes multiple model outputs.
	- Ensures that the final response is reliable, consistent, and actionable.
	- Plans further code execution or additional analyses based on the synthesized results.
4. **AICoreSync**
	- Manages real-time communication with the user by sending notifications and collecting clarifications or additional input.
	- Updates user responses back into AICoreFabric, ensuring the research process evolves dynamically.
5. **AICoreCrawl**
	- Gathers external data by web crawling and scraping to enhance AI-generated insights.
	- Provides critical metadata to improve the overall understanding of context by the AI agents.
6. **AICoreOrchestrator**
	- Oversees and manages the flow of data and tasks between all components.
	- Ensures a structured, automated, and adaptive approach to problem-solving.

## Core Components & Use Cases

### AICoreFabric
	- **Purpose:**
		- Acts as the central documentation hub by recording all user problems, AI-generated responses, and subsequent actions.
		- Tracks progress and refines AI outputs over time.
		- Integrates built-in security and audit logging to monitor system integrity.
	- **Component Status:**
		- **PostgreSQL or SQLite**	❌ Incomplete (Database & storage for robust, local data storage)
		- **Graylog or OpenSearch** 	❌ Incomplete (Audit logging for log aggregation and search)
		- **Keycloak** 			❌ Incomplete (Security & access control for managing user roles and securing endpoints)
		- **Data Version Control**	❌ Incomplete (Versioning & data tracking for tracking model and dataset changes)

### AICoreConstruct
	- **Purpose:**
		- Serves as the query interface to multiple AI models, acting as specialized agents.
		- Aggregates diverse insights and potential solutions based on user inputs.
	- **Component Status:**
		- **Ollama:**			✅ Completed
		- **Flask**			❌ Incomplete (API & Microservice Framework for standardized communication)
		- **Transformers** 		❌ Incomplete (for hosting models on-premise)
		- **Celery+Redis or RabbitMQ** 	❌ Incomplete (Task scheduling & management for asynchronous processing)

### AICoreCoalesce
	- **Purpose:**
		- Aggregates and synthesizes responses from the various AI agents.
		- Analyzes outputs for reliability and consistency.
		- Acts as the operator, planning next steps such as code execution or further analyses.
	- **Component Status**:
		- **Pandas and NumPy**		❌ Incomplete (Data Aggregation, analysis, processing and analyzing model outputs)
		- **scikit-learn**		❌ Incomplete (Consensus & ranking algorithms such as ensemble voting and response ranking)
		- **R1?**			❌ Incomplete (As a Workflow Decision Engine)

### AICoreSync
	- **Purpose:**
		- Manages real-time interaction between the AI and the user.
		- Sends notifications and requests for additional input, ensuring continuous feedback.
		- Updates AICoreFabric with new information to keep the research process dynamic.
	- **Component Status:**
		- **ntfy:** 			✅ Completed

### AICoreCrawl
	- **Purpose:**
		- Provides the AI research assistant with access to live internet data.
		- Uses web crawling and scraping to fetch metadata and context that enhance model responses.
	- **Component Status:**
		- **scraperr:**			✅ Completed (Removed)
		- **crawl4ai:**			🟡 Partial (New Docker Compose update Q1 2025)
		- **firecrawl:**		❌ Incomplete (Doesn't work)

### AICoreOrchestrator
	- **Purpose:**
		- Coordinates the entire workflow by ensuring data flows efficiently between components.
		- Oversees task scheduling and dynamic adaptation of workflows based on aggregated outputs.
	- **Component Status:**
		- **n8n:**			❌ Incomplete
		- **Apache Airflow** 		❌ Incomplete (Task scheduling for complex orchestration)
