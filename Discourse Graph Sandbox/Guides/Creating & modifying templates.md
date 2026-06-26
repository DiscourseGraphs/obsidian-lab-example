🚧 Under Construction 👷‍♂️

## Using Templates

The **Meta/Templates** folder in this vault contains templates for every discourse node type in this vault as well as Experiments, Projects, the Personal Home Page, and the various Logs.

![](example-template01.png)
_Question template_

Selecting text and pressing "Turn into discourse node" on the popup menu applies the selected Template to the file/text in question.

Using the "Convert Into" option from the 3-dot menu on an _existing_ file will cause the plugin to recognize the file as the node type that you select, but it does not apply the selected template. You can copy the desired template from your Templates folder.

![](call-template.png)

The discourse graph plugin handles the discourse node templates, while the [Templater](https://obsidian.md/plugins?id=templater-obsidian) plugin is used to style and inject dynamic content into the Daily Notes Page, Project Pages, Experiment Pages, & Logs. It also handles certain scripted file creation workflows.

These templates are markdown files, some of which contain [Datacore](https://github.com/blacksmithgu/datacore) js to add enhanced scripting/querying functionality. The main Datacore uses at present are to support the daily log entry functionality and the button used to alias filenames to prevent import/export issues across OSes. 

## Modifying Templates

Templates can be edited in the same way as other markdown files, and the Datacore fields can be modified or replaced by a knowledgeable user (or their coding agent).

You can modify the body of existing templates to better support your synthesis workflows, or the frontmatter properties to add additional queryable elements.

>[!tip] Beginner mod: you can add a "Presentation View" to your discourse nodes by moving a short summary + key image to the top of the node template.

![](pres-view01.png)
_The summary & properties sections can be collapsed for easy sidebar slideshow viewing_

## Creating New Templates

1. Create the template file by modifying an existing template in **Meta/Templates**. The frontmatter should include:


template: "[[YourTemplateName]]"
newNoteFolder: DiscourseGraph
tags:
cssclasses: `dg-xyz` (copy an existing css style or create a new one)


2. Go to Settings → Discourse Graphs → Node Types and add a new node type, entering the name of the template you just added to the templates folder.

![create a new node type](create-new-node-type.png)


The plugin auto-generates a unique id like node_XxXxXxXxX that will be used to fill in __nodeTypeId__

3. Now you can call your new template using either 
    - `Cmd+\` → select the node type → enter title → new file created with full template applied, or
   - "Convert Into" on an existing file → inserts the correct nodeTypeId; selected template can  be applied manually