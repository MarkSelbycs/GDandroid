package g4;

/* JADX INFO: compiled from: HeadersMode.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public enum g {
    SPDY_SYN_STREAM,
    SPDY_REPLY,
    SPDY_HEADERS,
    HTTP_20_HEADERS;

    public boolean b() {
        return this == SPDY_HEADERS;
    }

    public boolean e() {
        return this == SPDY_REPLY;
    }

    public boolean f() {
        return this == SPDY_REPLY || this == SPDY_HEADERS;
    }

    public boolean h() {
        return this == SPDY_SYN_STREAM;
    }
}
