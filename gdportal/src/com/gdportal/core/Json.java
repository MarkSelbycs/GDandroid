package com.gdportal.core;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;

/** Minimal JSON reader/writer (objects/arrays/strings/numbers/bool/null). No deps. */
public final class Json {

    public static Object parse(String s) {
        return new Parser(s).value0();
    }

    @SuppressWarnings("unchecked")
    public static Map<String, Object> obj(String s) {
        Object v = parse(s);
        return v instanceof Map ? (Map<String, Object>) v : new LinkedHashMap<>();
    }

    public static String str(Object o, String def) {
        return o == null ? def : String.valueOf(o);
    }

    public static String write(Object v) {
        StringBuilder sb = new StringBuilder();
        w(v, sb);
        return sb.toString();
    }

    private static void w(Object v, StringBuilder sb) {
        if (v == null) sb.append("null");
        else if (v instanceof Map) {
            sb.append('{');
            boolean first = true;
            for (Map.Entry<?, ?> e : ((Map<?, ?>) v).entrySet()) {
                if (!first) sb.append(',');
                first = false;
                q(String.valueOf(e.getKey()), sb).append(':');
                w(e.getValue(), sb);
            }
            sb.append('}');
        } else if (v instanceof List) {
            sb.append('[');
            boolean first = true;
            for (Object o : (List<?>) v) {
                if (!first) sb.append(',');
                first = false;
                w(o, sb);
            }
            sb.append(']');
        } else if (v instanceof Number || v instanceof Boolean) sb.append(v);
        else q(String.valueOf(v), sb);
    }

    private static StringBuilder q(String s, StringBuilder sb) {
        sb.append('"');
        for (int i = 0; i < s.length(); i++) {
            char c = s.charAt(i);
            switch (c) {
                case '"': sb.append("\\\""); break;
                case '\\': sb.append("\\\\"); break;
                case '\n': sb.append("\\n"); break;
                case '\r': sb.append("\\r"); break;
                case '\t': sb.append("\\t"); break;
                default:
                    if (c < 0x20) sb.append(String.format("\\u%04x", (int) c));
                    else sb.append(c);
            }
        }
        return sb.append('"');
    }

    private static final class Parser {
        final String s; int i;
        Parser(String s) { this.s = s; }

        void ws() { while (i < s.length() && Character.isWhitespace(s.charAt(i))) i++; }

        Object value0() {
            ws();
            if (i >= s.length()) throw err("eof");
            char c = s.charAt(i);
            if (c == '{') return object();
            if (c == '[') return array();
            if (c == '"') return string();
            if (c == 't' || c == 'f') return bool();
            if (c == 'n') { expect("null"); return null; }
            return number();
        }

        Map<String, Object> object() {
            LinkedHashMap<String, Object> m = new LinkedHashMap<>();
            i++; ws();
            if (i < s.length() && s.charAt(i) == '}') { i++; return m; }
            while (true) {
                ws();
                String k = string();
                ws();
                if (s.charAt(i) != ':') throw err("expected :");
                i++;
                m.put(k, value0());
                ws();
                char c = s.charAt(i++);
                if (c == '}') return m;
                if (c != ',') throw err("expected , or }");
            }
        }

        List<Object> array() {
            List<Object> l = new ArrayList<>();
            i++; ws();
            if (s.charAt(i) == ']') { i++; return l; }
            while (true) {
                l.add(value0());
                ws();
                char c = s.charAt(i++);
                if (c == ']') return l;
                if (c != ',') throw err("expected , or ]");
            }
        }

        String string() {
            ws();
            if (s.charAt(i) != '"') throw err("expected string");
            i++;
            StringBuilder sb = new StringBuilder();
            while (true) {
                char c = s.charAt(i++);
                if (c == '"') return sb.toString();
                if (c == '\\') {
                    char e = s.charAt(i++);
                    switch (e) {
                        case 'n': sb.append('\n'); break;
                        case 'r': sb.append('\r'); break;
                        case 't': sb.append('\t'); break;
                        case 'b': sb.append('\b'); break;
                        case 'f': sb.append('\f'); break;
                        case 'u': sb.append((char) Integer.parseInt(s.substring(i, i + 4), 16)); i += 4; break;
                        default: sb.append(e);
                    }
                } else sb.append(c);
            }
        }

        Object bool() {
            if (s.startsWith("true", i)) { i += 4; return Boolean.TRUE; }
            if (s.startsWith("false", i)) { i += 5; return Boolean.FALSE; }
            throw err("bad literal");
        }

        Object number() {
            int st = i;
            while (i < s.length() && "+-0123456789.eE".indexOf(s.charAt(i)) >= 0) i++;
            String n = s.substring(st, i);
            if (n.contains(".") || n.contains("e") || n.contains("E")) return Double.valueOf(n);
            return Long.valueOf(n);
        }

        void expect(String lit) {
            if (!s.startsWith(lit, i)) throw err("expected " + lit);
            i += lit.length();
        }

        RuntimeException err(String m) { return new IllegalArgumentException("JSON @" + i + ": " + m); }
    }
}
