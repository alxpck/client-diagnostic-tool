# Cost Analysis

> These findings are based on code analysis, not actual usage data. Verify costs with the client.

## Paid Services Detected

[List every paid service identified in the codebase — hosting, APIs, SaaS tools. One entry each.]

| Service | What It's For | How It's Used |
|---------|--------------|---------------|
| [Service name] | [Purpose] | [Direct API / SDK / Webhook / etc.] |

## Potential Waste

[Flag any patterns that suggest unnecessary spending:]
- Redundant API calls (same data fetched multiple times)
- Oversized context windows (sending more tokens than needed)
- Unused services (configured but never called)
- Inefficient patterns (polling instead of webhooks, etc.)

## Questions for the Client

- What's your current monthly spend on [service]?
- Are you on a free tier or paid plan for [service]?
- How often does [component] actually run?
