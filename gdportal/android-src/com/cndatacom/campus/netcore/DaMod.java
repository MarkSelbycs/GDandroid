package com.cndatacom.campus.netcore;

/**
 * Clean-room re-authoring of the original DaMod bridge (reconstructed from v2104).
 * The package/class/method names MUST stay identical: libdaproxy.so's JNI exports are
 * Java_com_cndatacom_campus_netcore_DaMod_{load,enc,dec,free,aid,key,prev,inspect}.
 * Parcelable dropped (never used by the protocol path).
 */
public class DaMod {
    private static DaMod _DaMod;
    private long mod;

    static {
        System.loadLibrary("daproxy");
    }

    private DaMod() {
        this.mod = 0L;
    }

    public static synchronized DaMod getInstance() {
        if (_DaMod == null) _DaMod = new DaMod();
        return _DaMod;
    }

    private native long load(byte[] bArr);
    private native byte[] enc(long j5, byte[] bArr);
    private native byte[] dec(long j5, byte[] bArr);
    private native void free(long j5);
    private native String aid(long j5);
    private native String key(long j5);
    private native String prev(long j5);
    private native String[] inspect(long j5, boolean z4);

    public boolean isOk() {
        return this.mod != 0;
    }

    public void setData(byte[] bArr) {
        this.mod = load(bArr);
    }

    public boolean Load(byte[] bArr) {
        Free();
        this.mod = load(bArr);
        return this.mod != 0;
    }

    public String getId() {
        return this.mod == 0 ? "" : aid(this.mod);
    }

    public String getKey() {
        return this.mod == 0 ? "" : key(this.mod);
    }

    public String getPrefix() {
        return this.mod == 0 ? "" : prev(this.mod);
    }

    public String[] Inspect(boolean z4) {
        return this.mod == 0 ? new String[]{"0", ""} : inspect(this.mod, z4);
    }

    public byte[] Encode(byte[] bArr) {
        return this.mod == 0 ? new byte[0] : enc(this.mod, bArr);
    }

    public byte[] Decode(byte[] bArr) {
        return this.mod == 0 ? new byte[0] : dec(this.mod, bArr);
    }

    public void Free() {
        if (this.mod != 0) {
            free(this.mod);
            this.mod = 0L;
        }
    }
}
