package q1;

/* JADX INFO: compiled from: DateParser.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface c extends q1.b {
    java.util.Date b(java.lang.String str, java.text.ParsePosition parsePosition);

    boolean h(java.lang.String str, java.text.ParsePosition parsePosition, java.util.Calendar calendar);

    default java.lang.Object parseObject(java.lang.String str, java.text.ParsePosition parsePosition) {
        return b(str, parsePosition);
    }
}
