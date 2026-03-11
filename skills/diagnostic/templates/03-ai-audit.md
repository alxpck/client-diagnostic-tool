# AI Audit

## Models

[Which AI models are being used? Provider, model name, version if detectable.]

## System Prompts

[Extract and include each system prompt found in the codebase. Wrap each in a blockquote. Note which component uses it and where it lives in the code.]

> [Extracted prompt here — credentials redacted]

**Source:** [file path]
**Used by:** [component name]

## Voice & Style Matching

[Is there voice matching? How is it implemented — example documents, style guides in the prompt, fine-tuning? How good is it likely to be?]

## RAG / Knowledge Base

[Is there retrieval-augmented generation? What's in the knowledge base? How is it indexed and queried?]

## Autonomous Decisions

[What decisions is the AI making without human input? Drafting content? Choosing recipients? Publishing? Responding to messages?]

## Prompt Injection Risks

[Any component that reads untrusted content (emails, web content, user messages) and passes it to the LLM is a prompt injection surface. List them.]

## Failure Modes

[What happens when the AI produces bad output? Is it caught? Does it go straight to the audience? Is there a fallback?]
