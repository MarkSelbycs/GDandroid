package x1;

/* JADX INFO: compiled from: Func0.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
@java.lang.FunctionalInterface
public interface a<R> extends java.io.Serializable {
    R call() throws java.lang.Exception;

    default R t() {
        try {
            return call();
        } catch (java.lang.Exception e5) {
            throw new java.lang.RuntimeException(e5);
        }
    }
}
