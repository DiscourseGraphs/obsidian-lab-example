---
cssclasses: [sandbox-page]
---
🚧 Under Construction 👷‍♂️

## Turn your tsundoku pile into a knowledge base with discourse graphs

![tsundoku pile](tsundoku.png)
_candidate for saddest short poem_\

Many researhers have established pipeline for accumulating potentially useful evidence and insights, but fewer ways of managing and exploiting these resources.


#clm-candidate: The discourse graph protocol  can be used to drive more intentional note taking and to acceentuate serendipitous discovery within existing knowledge bases.

## Startup

If you're already using Obsidian or Roam Research or another PKM platform, your first question might be _"Can is integrate discourse graphs into my existing knowledge base?"_

For Obsidian (& Roam), the answer is **yes**.
 Your discourse nodes can coexist with your existing graph: the two major considerations are _organizational preferences_ and _vault size_

### Vault organization

If you are a **"folder-centric"** Obsidian user, we recommend keeping your discourse graph an folder within your vault.

![left sidebar](left-sidebar.png)

The Discourse Graph plugin lets you configure a default folder (or per-node-type folders) for discourse nodes in its settings, independent of Obsidian's own "Default location for new notes" setting.

So Obsidian's **"Default location for new notes"** setting (in `Settings → Files & Links`) can control where non-discourse notes go while the plugin routes new nodes to its own folder.

vault/
├── Discourse Graph/
│   ├── Questions/
│   ├── Claims/
│   └── Evidence/
└── Notes/          ← regular notes land here

As you convert more of your existing notes to discourse nodes via the plugin's **"Convert note to discourse node"** command they will be moved to the configured discourse folder.

If you're a **"graph-centric"** vault user, following Obsidian wiki-linking and discourse graph [[Creating Relations| relation-creating]] practices will allow you to navigate a vault of arbitrary size without getting lost in unrelated material.

As you build out your graph, your discourse nodes will begin to form "paths of desire" around the central Questions in your vault.

![ graph view](graph-view02)

>[!tip] Graph Gardening: Add a random note picker to your vault to get in the habit of reviewing older notes for potential conversion to discourse nodes

### Managing a large vault

"Vanilla" Obsidian accommodates very large vaults with very few issues. 
#clm-candidate: vault size usually only becomes a problem when you're running many script-heavy plugins at once.
If you're an Obsidian power user you may already be using a plugin ike [Dataview](https://blacksmithgu.github.io/obsidian-dataview/) to run queries over your vault.  The discourse graph plugin uses [Datacore](https://github.com/blacksmithgu/datacore) to power its queries, which is even more performant in large vaults than Dataview. These two plugins can both be used in the same vault but we recommend keeping an eye on your plugin count to optimize vault load time.

## Transforming existing notes into discourse nodes

You can transform a variety of file types into discourse nodes: 
- [readwise](https://readwise.io/) snippets 
- [memex](https://memex.garden/) imports 
- screenshots
- captures from the [Obsidian web clipper](https://obsidian.md/clipper). etc.

As long as it can be referenced (`[filename]`) in a markdown file withthe appropriate  frontmatter, it can be part of 

## What else would you like to do?
- [[Synthesize Insights from the Literature]]
- [[Track your Projects and Experiments]]
- [[Share your Ideas and Research]]