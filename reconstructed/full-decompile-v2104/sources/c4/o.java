package c4;

/* JADX INFO: compiled from: Dns.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public interface o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c4.o f3190a = new c4.o.a();

    /* JADX INFO: compiled from: Dns.java */
    public static class a implements c4.o {
        @Override // c4.o
        public java.util.List<java.net.InetAddress> lookup(java.lang.String str) throws java.net.UnknownHostException {
            if (str != null) {
                return java.util.Arrays.asList(java.net.InetAddress.getAllByName(str));
            }
            throw new java.net.UnknownHostException("hostname == null");
        }
    }

    java.util.List<java.net.InetAddress> lookup(java.lang.String str) throws java.net.UnknownHostException;
}
