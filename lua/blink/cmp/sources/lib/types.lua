--- @class blink.cmp.CompletionTriggerContext
--- @field kind number
--- @field character string
---
--- @class blink.cmp.CompletionContext : blink.cmp.ShowContext
--- @field trigger blink.cmp.CompletionTriggerContext | nil
---
--- @class blink.cmp.CompletionResponse
--- @field isIncomplete boolean
--- @field items blink.cmp.CompletionItem[]
---
--- @class blink.cmp.Source
--- @field get_trigger_characters (fun(): string[]) | nil
--- @field completions fun(context: blink.cmp.CompletionContext, callback: fun(response: blink.cmp.CompletionResponse))
--- @field filter_completions (fun(context: blink.cmp.CompletionContext, source_responses: table<string, blink.cmp.CompletionResponse>): blink.cmp.CompletionItem[]) | nil
--- @field cancel_completions fun() | nil
--- @field should_show_completions (fun(context: blink.cmp.CompletionContext, source_responses: table<string, blink.cmp.CompletionResponse>): boolean) | nil
--- @field resolve (fun(item: blink.cmp.CompletionItem, callback: fun(resolved_item: lsp.CompletionItem | nil)): ((fun(): nil) | nil)) | nil
---
--- @class blink.cmp.SourceProvider
--- @field module blink.cmp.Source
--- @field fallback_for string[]
--- @field keyword_length number
--- @field score_offset number
--- @field deduplicate blink.cmp.DeduplicateConfig
--- @field override blink.cmp.OverrideConfig
---
--- @field get_trigger_characters fun(self: blink.cmp.SourceProvider): string[]
--- @field completions fun(self: blink.cmp.SourceProvider, context: blink.cmp.CompletionContext, callback: fun(response: blink.cmp.CompletionResponse))
--- @field filter_completions fun(self: blink.cmp.SourceProvider, context: blink.cmp.CompletionContext, source_responses: table<string, blink.cmp.CompletionResponse>): blink.cmp.CompletionItem[]
--- @field cancel_completions fun(self: blink.cmp.SourceProvider)
--- @field should_show_completions fun(self: blink.cmp.SourceProvider, context: blink.cmp.CompletionContext, source_responses: table<string, blink.cmp.CompletionResponse>): boolean
--- @field resolve fun(self: blink.cmp.SourceProvider, item: blink.cmp.CompletionItem, callback: fun(resolved_item: lsp.CompletionItem | nil)): ((fun(): nil) | nil)
