AIServer:
    Structure:
        /AIServer
	    ├.env
	    ├-/AICoreCoalesce
	    ├-/AICoreConstruct
	    |    ├docker-compose.yaml
	    |    ├modelfile
	    ├-/AICoreCrawl
	    |    ├/scraperr
	    |    |    ├docker-compose.yaml
	    |    ├/crawl4ai
	    |         ├docker-compose.yaml
	    ├/AICoreSync
	    |    ├docker-compose.yaml
	    |    ├/ntfy
	    |         ├server.yaml
	    ├/AICoreFabric
AICoreCoalesce
AICoreConstruct
AICoreCrawl:
	
	Purpose:
		For webcrawling and scrapping websites to form MD for model to understand more easily.
	status:
		Completed:	scraperr
		Partial:	crawl4ai(New docker compose update q1 2025)
		Incomplete:	firecrawl(Doesnt work)
AICoreSync:
	Purpose:
		Notification channel to facilitate communication between AI and user for collecting user needs.
	status:
		Completed:	ntfy
AICoreFabric:
	Purpose:
		Centralised Documentation of AI and Human actions and responses for auditing.
	status:
		Incomplete
