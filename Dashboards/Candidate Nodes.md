---
aliases:
  - Candidate Nodes
cssclasses: dashboard
---

# Candidate Nodes

Triage view: all list items tagged `#*-candidate` across the vault, grouped by page.

```datacorejsx
return function CandidateNodeDashboard() {
  const TAG_COLORS = {
    "iss-candidate": "#e67e22",
    "que-candidate": "#e74c3c",
    "hyp-candidate": "#3498db",
    "clm-candidate": "#9b59b6",
    "evd-candidate": "#1abc9c",
    "res-candidate": "#27ae60",
    "con-candidate": "#2ecc71",
    "exp-candidate": "#f39c12",
  };
  const DEFAULT_COLOR = "#7f8c8d";

  const allItems = dc.useQuery("@list-item");

  const candidateItems = dc.useMemo(() =>
    allItems.filter(item => {
      const tags = item.$tags ? [...item.$tags] : [];
      return tags.some(t => String(t).includes("-candidate"));
    }),
    [allItems]
  );

  const byPage = dc.useMemo(() => {
    const map = new Map();
    for (const item of candidateItems) {
      const fp = String(item.$file ?? "");
      if (!map.has(fp)) map.set(fp, []);
      map.get(fp).push(item);
    }
    return [...map.entries()].sort(([a], [b]) => {
      const na = a.replace(/^.*\//, "").replace(/\.md$/, "");
      const nb = b.replace(/^.*\//, "").replace(/\.md$/, "");
      return na.localeCompare(nb);
    });
  }, [candidateItems]);

  const tagCounts = dc.useMemo(() => {
    const counts = {};
    for (const item of candidateItems) {
      const tags = item.$tags ? [...item.$tags] : [];
      for (const t of tags) {
        const ts = String(t);
        if (ts.includes("-candidate")) counts[ts] = (counts[ts] || 0) + 1;
      }
    }
    return Object.entries(counts).sort(([a], [b]) => a.localeCompare(b));
  }, [candidateItems]);

  if (candidateItems.length === 0) {
    return (
      <p style={{ fontStyle: "italic", opacity: 0.6 }}>
        No candidate-tagged items found. Tag list items with <code>#iss-candidate</code>, <code>#res-candidate</code>, etc. to collect them here.
      </p>
    );
  }

  const Badge = ({ tag }) => {
    const color = TAG_COLORS[tag] ?? DEFAULT_COLOR;
    return (
      <span style={{
        background: color,
        color: "#fff",
        borderRadius: "3px",
        padding: "1px 6px",
        fontSize: "0.75em",
        fontWeight: 600,
        marginRight: "0.4em",
        whiteSpace: "nowrap",
      }}>
        #{tag.replace("-candidate", "")}
      </span>
    );
  };

  const cleanText = (text, tags) => {
    let t = String(text ?? "").trim();
    for (const tag of tags) {
      t = t.replace(new RegExp(`#${tag}\\b\\s*`, "g"), "").trim();
    }
    return t;
  };

  return (
    <div>
      <div style={{ marginBottom: "1.2em", display: "flex", flexWrap: "wrap", gap: "0.5em", alignItems: "center" }}>
        <span style={{ opacity: 0.6, fontSize: "0.9em", marginRight: "0.4em" }}>
          {candidateItems.length} candidate{candidateItems.length !== 1 ? "s" : ""} across {byPage.length} page{byPage.length !== 1 ? "s" : ""}
        </span>
        {tagCounts.map(([tag, count]) => (
          <span key={tag} style={{ fontSize: "0.85em" }}>
            <Badge tag={tag} />
            <span style={{ opacity: 0.7 }}>×{count}</span>
          </span>
        ))}
      </div>

      {byPage.map(([fp, items], i) => {
        const href = fp.replace(/\.md$/, "");
        const label = fp.replace(/^.*\//, "").replace(/\.md$/, "");
        return (
          <div key={i} style={{ marginBottom: "1.4em" }}>
            <div style={{ fontWeight: 600, marginBottom: "0.3em" }}>
              <a href={href} className="internal-link" data-href={href}>
                {label}
              </a>
              <span style={{ opacity: 0.45, fontSize: "0.8em", marginLeft: "0.5em" }}>
                {fp.replace(/\/[^/]+\.md$/, "")}
              </span>
            </div>
            <ul style={{ margin: 0, paddingLeft: "1.2em" }}>
              {items.map((item, j) => {
                const tags = item.$tags
                  ? [...item.$tags].filter(t => String(t).includes("-candidate"))
                  : [];
                const text = cleanText(item.$text, tags);
                return (
                  <li key={j} style={{ marginBottom: "0.25em", listStyle: "none", display: "flex", alignItems: "baseline", gap: "0.3em" }}>
                    <span>
                      {tags.map(t => <Badge key={t} tag={String(t)} />)}
                    </span>
                    <span style={{ opacity: text ? 1 : 0.4 }}>
                      {text || <em>(no description)</em>}
                    </span>
                  </li>
                );
              })}
            </ul>
          </div>
        );
      })}
    </div>
  );
}
```
