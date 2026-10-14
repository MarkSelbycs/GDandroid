package e2;

/* JADX INFO: compiled from: XmlUtil.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class e0 {
    public static java.lang.String a(org.w3c.dom.Node node) {
        return d(node, false);
    }

    public static java.lang.String b(org.w3c.dom.Node node, java.lang.String str, boolean z4) {
        return c(node, str, z4, false);
    }

    public static java.lang.String c(org.w3c.dom.Node node, java.lang.String str, boolean z4, boolean z5) {
        java.io.StringWriter stringWriterD0 = e2.b0.d0();
        try {
            f(node, stringWriterD0, str, z4 ? 2 : 0, z5);
            return stringWriterD0.toString();
        } catch (java.lang.Exception e5) {
            throw new r1.c(e5, "Trans xml document to string error!", new java.lang.Object[0]);
        }
    }

    public static java.lang.String d(org.w3c.dom.Node node, boolean z4) {
        return b(node, "UTF-8", z4);
    }

    public static void e(javax.xml.transform.Source source, javax.xml.transform.Result result, java.lang.String str, int i5, boolean z4) {
        try {
            javax.xml.transform.Transformer transformerNewTransformer = javax.xml.transform.TransformerFactory.newInstance().newTransformer();
            if (i5 > 0) {
                transformerNewTransformer.setOutputProperty("indent", "yes");
                transformerNewTransformer.setOutputProperty("doctype-public", "yes");
                transformerNewTransformer.setOutputProperty("{http://xml.apache.org/xslt}indent-amount", java.lang.String.valueOf(i5));
            }
            if (b2.c.s(str)) {
                transformerNewTransformer.setOutputProperty("encoding", str);
            }
            if (z4) {
                transformerNewTransformer.setOutputProperty("omit-xml-declaration", "yes");
            }
            transformerNewTransformer.transform(source, result);
        } catch (java.lang.Exception e5) {
            throw new r1.c(e5, "Trans xml document to string error!", new java.lang.Object[0]);
        }
    }

    public static void f(org.w3c.dom.Node node, java.io.Writer writer, java.lang.String str, int i5, boolean z4) {
        e(new javax.xml.transform.dom.DOMSource(node), new javax.xml.transform.stream.StreamResult(writer), str, i5, z4);
    }
}
