---
cssclasses: [sandbox-page]
---

The Discourse Graph plugin implements a tldraw canvas (in addition to the canvas feature that ships with Obsidian) allowing users to visually map out discourse structures. The discourse graph canvas incorporates easy-peasy drag-and-drop functionality drawing on your corpus of discourse nodes with the ability to add diagrams, drawings, and freehand text.

![](dg-canvas.png)
_We love the Canvas, don't we, folks?_

## Creating a Canvas

### Using the command palette

1. Open the command palette (Cmd/Ctrl + P)
2. Search for “Create new Discourse Graph canvas”
3. Press Enter to create a new canvas

➡️ The canvas will be created in your configured canvas folder(default: Discourse Canvas/) with a timestamp-based filename like Canvas-2025-01-15-1430.md.

### Using a Datacore button

One of the more powerful uses of the discourse canvas is to organize the nodes related to a particular **Question** or **Project**. We've added a Datacore button to the QUE and PRJ templates that creates a Canvas named after that Project or Question at first press, and navigates to that canvas with every press thereafter. 

![](canvas-button.png)
_The datacore button on a Project Page_

You can open any canvas by navigating to its file in the _Discourse Canvas_ folder. Occasionally if your cursor lands in the wrong place it will open up in markdown view: _don't panic!_ Just click on the "_Canvas View_" icon in the top right corner.

![](canvas-02.png)
_Don't panic, but also don't manually modify the markdown content of your Canvas_

## Adding nodes to the Canvas

### Creating a discourse node

1. Click the Discourse Graph icon in the bottom toolbar
2. In the panel on the right, click a node type to select it (or drag a node type onto the canvas)
3. Click on the canvas where you'd like to place the node
4. In the _Create discourse node_ modal, enter a title, confirm the node type, and click _Confirm_: the new node appears on the canvas as a discourse node card and links back to the node page in your graph.

![](create-node-canvas.gif)
_You can also search for existing nodes from this modal and add it to the canvas_

### Add an existing node

#### By dragging onto the canvas

 Discourse nodes (notes with a configured nodeTypeId in frontmatter) can be dropped directly onto the canvas. If the same node is already on the canvas, the existing card is selected instead of duplicating it.

##### From the file explorer

1. Select a discourse node from the Obsidian file explorer and drag it onto the canvas
2. ➡️ The node is added at the drop location

![](file-explorer-drag.gif)
_drag & drop from the file explorer_

##### From the editor

When a Discourse Graph canvas is open, internal links in Live Preview show a small drag handle (⠿) after the link.

1. In a note, find a wikilink or markdown link to a discourse node (for example [[CLM - My claim]])
2. Drag using the handle next to the link
3. Drop onto the canvas

The handle appears for [[wikilinks]] and [markdown links](path.md) that point to notes in your vault. It does not appear on image embeds (![[...]]).

![alt text](editor-drag-node.gif)
_drag & drop from the editor_


>[!info]- The "Key Image" setting in Discourse Graph Settings> Node types for each node type controls whether the first image present in a node file is displayed on the Canvas
>  ![](key-img-setting.png)

### Converting text, images, or shapes into a discourse node

You can turn tldraw text or image shapes into discourse nodes without leaving the canvas:

1. Select a text or image shape on the canvas
2. Right-click the shape
3. Choose a node type from the _Convert to_ submenu
4. In the modal, edit the title (text is pre-filled; images start with an empty title) or search for an existing node
5. Click _Confirm_ ➡️ the shape is replaced with a discourse node card


## Connecting discourse nodes with relations

### creating new relations

You can also create **discourse relations** directly on the Canvas. 

1. Click the discourse node icon in the toolbar
2. Click the type of relation you want to create between two nodes
3. Click and drag the arrow from the source node to target node

![](create-relation-canvas.gif)
_creating a relation on the canvas_

Alternatively, you can select the dots marked "Relations" that appear when you click a node and drag the arrow to the destination node to create a new relation

![alt text](drag-relation.gif)
_Draggin' Dots_

> [!info] The relation type selected must be compatible between the source and target nodes. If the desired relation has not been configured yet, you will receive an error message. [[Creating Relations | create new relation types]] in the Discourse graph plugin settings> relation types  

![](relation-error.webp)

### adding existing relations

1. Click on the discourse node whose existing relations you'd like to display
2. Click on the “_Relations_” button that pops up. You’ll see a panel showing all the relations defined for this node
3. Click on the `+` or `-` to add these relations to the canvas

    - if the  target discourse node isn’t on canvas yet, it will be added to the canvas along with the relation

![](existing-relations-canvas.gif)
_browsing existing relations_

## Synchronizing your Canvas and graph

Nodes and relations that you create or modify on the Canvas are automatically updated in your graph.

## Annotating your Canvas

The bottom toolbar of your discourse canvas contains  tools for highlighting, freehand drawing, pasting images and shapes, and inserting sticky notes.

![](annotate-canvas.png)

## Exporting your Canvas

- Markdown View: Switch to see the underlying markdown structure
- SVG Export: Export canvas as SVG image (via tldraw)
- PNG Export: Export canvas as PNG image (via tldraw)
 
![alt text](canvas-export%201.png)



Learn how to incorporate the Canvas in your discourse graph workflow:

- [[Build and Utilize a Personal Knowledge Base]]
- [[Synthesize Insights from the Literature]]
- [[Track your Projects and Experiments]]
- [[Share your Ideas and Research]]





