package f2;

/* JADX INFO: compiled from: JSON.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface b extends java.lang.Cloneable, java.io.Serializable {
    default java.lang.String Y(int i5) throws f2.h {
        java.lang.String string;
        java.io.StringWriter stringWriter = new java.io.StringWriter();
        synchronized (stringWriter.getBuffer()) {
            string = r(stringWriter, i5, 0).toString();
        }
        return string;
    }

    java.io.Writer r(java.io.Writer writer, int i5, int i6) throws f2.h;
}
