# AIServer docker configuration for AI assisted research communcation
```bash
    File Structure:
        /AIServer
	    ├──.env
	    ├──/AICoreCoalesce
	    ├──/AICoreConstruct
	    │    └──/ollama
	    │	        ├──docker-compose.yaml
	    │    	└──/modelfile
	    ├──/AICoreCrawl
	    │    ├──/scraperr
	    │    │    └──docker-compose.yaml
	    │    └──/crawl4ai
	    │         └──docker-compose.yaml
	    ├──/AICoreSync
	    │    ├──docker-compose.yaml
	    │    └──/ntfy
	    │         └──server.yaml
	    ├──/AICoreFabric
	    └──/AICoreOrchestrator
```

AICoreCoalesce:\
        Purpose:\
                Abstraction layer to summarise multiple model outputs for reliability.\

AICoreConstruct:\
        Purpose:\
                To query model endpoints for constructing results into a whole.\
	Component-Status:\
		Ollama: 	Completed

AICoreCrawl:\
	Purpose:\
		For webcrawling and scraping websites to form metadata for model to understand more easily.\
	Component-Status:\
		scraperr:	Completed and removed\
		crawl4ai:	Partial (New docker compose update q1 2025)\
		firecrawl:	Incomplete (Doesnt work)\

AICoreSync:\
	Purpose:\
		Notification channel to facilitate communication between AI and user for collecting user needs.\
	Component-Status:\
		ntfy:		Completed:\

AICoreFabric:\
	Purpose:\
		Centralised Documentation of AI and Human actions and responses for auditing.\
	Component-Status:\
		Doc:		Incomplete\

AICoreOrchestrator:\
	Purpose:\
		Organising overall model interaction with data into singular flow.\
	Component-Status:\
		n8n:		Incomplete\
