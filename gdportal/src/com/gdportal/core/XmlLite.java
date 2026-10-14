package com.gdportal.core;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/**
 * Minimal XML reader: parses flat-ish request/response XML into a Node tree.
 * Enough for the CDC protocol (<request>/<response> with nested <config>/<funcfg>).
 * No DTD, no attributes needed; text-only leaves. Tolerant of &amp; entities.
 */
public final class XmlLite {

    public static final class Node {
        public final String name;
        public final List<Node> children = new ArrayList<>();
        public final Map<String, String> attrs = new LinkedHashMap<>();
        public String text = "";

        Node(String name) { this.name = name; }

        /** First child with given tag, or null. */
        public Node child(String tag) {
            for (Node c : children) if (c.name.equals(tag)) return c;
            return null;
        }

        /** All children with given tag. */
        public List<Node> children(String tag) {
            List<Node> out = new ArrayList<>();
            for (Node c : children) if (c.name.equals(tag)) out.add(c);
            return out;
        }

        public String text(String tag, String def) {
            Node c = child(tag);
            return c == null ? def : c.text;
        }

        /** Flatten one level: {childName: text} for text leaves, recursion handled by caller via child(). */
        public Map<String, String> flat() {
            LinkedHashMap<String, String> m = new LinkedHashMap<>();
            for (Node c : children) if (c.children.isEmpty()) m.put(c.name, c.text);
            return m;
        }

        @Override public String toString() { return name + "(" + text + "," + children.size() + ")"; }
    }

    public static Node parse(String xml) {
        Node root = new Node("#root");
        List<Node> stack = new ArrayList<>();
        stack.add(root);
        int i = 0, n = xml.length();
        while (i < n) {
            int lt = xml.indexOf('<', i);
            if (lt < 0) { appendText(stack, xml.substring(i)); break; }
            appendText(stack, xml.substring(i, lt));
            if (xml.startsWith("<![CDATA[", lt)) {                   // <![CDATA[ ... ]]>
                int cs = lt + 9;
                int end = xml.indexOf("]]>", cs);
                if (end < 0) end = n;
                stack.get(stack.size() - 1).text += xml.substring(cs, end);
                i = Math.min(end + 3, n);
                continue;
            }
            int gt = xml.indexOf('>', lt);
            if (gt < 0) break;
            String tag = xml.substring(lt + 1, gt).trim();
            if (tag.startsWith("?") || tag.startsWith("!")) {           // <?xml ...?> / <!-- --> / <!DOCTYPE
                if (tag.startsWith("!--")) { int e = xml.indexOf("-->", gt); i = e < 0 ? n : e + 3; }
                else i = gt + 1;
                continue;
            }
            if (tag.startsWith("/")) {                                   // close
                String name = tag.substring(1).trim();
                for (int s = stack.size() - 1; s > 0; s--)
                    if (stack.get(s).name.equals(name)) { while (stack.size() > s) stack.remove(stack.size() - 1); break; }
            } else {                                                     // open (maybe self-closing)
                boolean selfClose = tag.endsWith("/");
                if (selfClose) tag = tag.substring(0, tag.length() - 1).trim();
                int sp = tag.indexOf(' ');                               // split attributes
                String name = sp > 0 ? tag.substring(0, sp) : tag;
                Node node = new Node(name);
                if (sp > 0) parseAttrs(tag.substring(sp + 1), node.attrs);
                stack.get(stack.size() - 1).children.add(node);
                if (!selfClose) stack.add(node);
            }
            i = gt + 1;
        }
        return root;
    }

    private static void appendText(List<Node> stack, String raw) {
        if (raw.trim().isEmpty()) return;
        Node cur = stack.get(stack.size() - 1);
        cur.text += unescape(raw.trim());
    }

    /** name="value" pairs (also single-quoted); values unescaped. */
    static void parseAttrs(String s, Map<String, String> out) {
        java.util.regex.Matcher m = java.util.regex.Pattern
                .compile("([A-Za-z_][\\w:.-]*)\\s*=\\s*(?:\"([^\"]*)\"|'([^']*)')").matcher(s);
        while (m.find()) out.put(m.group(1), unescape(m.group(2) != null ? m.group(2) : m.group(3)));
    }

    public static String unescape(String s) {
        return s.replace("&amp;", "&").replace("&lt;", "<").replace("&gt;", ">")
                .replace("&quot;", "\"").replace("&apos;", "'");
    }
}
