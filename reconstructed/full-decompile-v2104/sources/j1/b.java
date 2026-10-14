package j1;

/* JADX INFO: compiled from: CloneSupport.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public class b<T> implements java.lang.Cloneable {
    public T clone() {
        try {
            return (T) super.clone();
        } catch (java.lang.CloneNotSupportedException e5) {
            throw new j1.a(e5);
        }
    }
}
