A discourse graph orients your intellectual work around a central motivating question. So the first step in creating a graph is to identify or formulate an interesting question. 

## Creating a node from selected text

If the question has already been recorded in your notes, you can simply highlight the relevant text with your mouse, right-click
and select _"Turn into discourse node"_ 

![[create QUE.gif|400]]


![dropdown node menu|300](dnode-menu.png)

**or** highlight the selected text, Press `Ctrl + \` (or your configured hotkey) and open the node menu as a popup

![[create QUE02.gif]]

This will create a new note using the "Question" template having the title of the text you selected.

## Creating a node from scratch

You can also create a node _de novo_ from anywhere in your graph using the "Create discourse node" hotkey (`Ctrl +\` in this vault)

![[create QUE03.gif]]

**or** by creating a new page in your graph, giving it a title appropriate for its node type, and selecting the correct template from the **Templater** menu in the left sidebar. 

![[create ISS.gif]]

## Aliasing node titles

Discourse graph node titles are also filenames.

You might decide that you want to edit the node title  for clarity after creation. Once you're satisfied with the title, click the button "save full title as alias" - this will truncate the title and remove characters that don't play well with filenames. The full title will be saved in the "alias" property field, and will be used in search and autocomplete. The button will self-destruct after use, after which the title and "alias" field can be edited manually.

![alias node title](alias.png)

## Node templates & properties

Each node type (QUE, CLM, EVD, etc) has its own particular set of properties stored as frontmatter. All nodes have a nodeTypeId which they share with all other nodes of the same type, and an alias field. Tags can be used to improve searchability.  Other fields can differ by node type, and you can add additional properties to fit your use cases.

![alt text](node-properties.png)

Node templates can be found in the **"Meta/Templates"** folder in this example vault, and edited like any Obsidian note. 

![QUE template|300](que-template.png)

## Getting started building your graph


The initial question in the [[Canvas - PRJ - Passarine Songbird Cargo Capacity|tutorial graph]] is [[QUE - Can a 5 ounce bird carry a one-pound coconut?]]


![alt text](QUE-ex01.png)

Your first Question node is the seed for the rest of your graph. You can begin sketching out your Hypotheses addressing the Question or adducing a few Claims from the literature. Once you have a few nodes, you're ready to begin [[Creating Relations]]