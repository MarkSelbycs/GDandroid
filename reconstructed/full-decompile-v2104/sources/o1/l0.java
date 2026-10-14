package o1;

/* JADX INFO: compiled from: StringConverter.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class l0 extends n1.a<java.lang.String> {
    public static java.lang.String h(java.sql.Blob blob) {
        java.io.InputStream binaryStream = null;
        try {
            try {
                binaryStream = blob.getBinaryStream();
                java.lang.String strH = t1.d.h(binaryStream, e2.g.f4074b);
                t1.d.a(binaryStream);
                return strH;
            } catch (java.sql.SQLException e5) {
                throw new n1.d(e5);
            }
        } catch (java.lang.Throwable th) {
            t1.d.a(binaryStream);
            throw th;
        }
    }

    public static java.lang.String j(java.sql.Clob clob) {
        java.io.Reader characterStream = null;
        try {
            try {
                characterStream = clob.getCharacterStream();
                java.lang.String strI = t1.d.i(characterStream);
                t1.d.a(characterStream);
                return strI;
            } catch (java.sql.SQLException e5) {
                throw new n1.d(e5);
            }
        } catch (java.lang.Throwable th) {
            t1.d.a(characterStream);
            throw th;
        }
    }

    @Override // n1.a
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public java.lang.String c(java.lang.Object obj) {
        if (obj instanceof java.util.TimeZone) {
            return ((java.util.TimeZone) obj).getID();
        }
        if (obj instanceof org.w3c.dom.Node) {
            return e2.e0.a((org.w3c.dom.Node) obj);
        }
        if (obj instanceof java.sql.Clob) {
            return j((java.sql.Clob) obj);
        }
        if (obj instanceof java.sql.Blob) {
            return h((java.sql.Blob) obj);
        }
        return obj instanceof java.lang.reflect.Type ? ((java.lang.reflect.Type) obj).getTypeName() : e(obj);
    }
}
