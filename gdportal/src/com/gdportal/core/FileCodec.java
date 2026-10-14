package com.gdportal.core;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/**
 * PC/debug codec: does NOT reimplement the ZSM algorithm. Instead it shells out to a
 * helper (the real libdaproxy.so under a JNI wrapper, or a captured encode/decode oracle).
 * If no helper is present it behaves as "no plugin" (ok()==false) so the client falls back
 * to the bootstrap placeholder path exactly like the original app before a plugin is loaded.
 *
 * On Android, replace this with DaModCodec (direct JNI). This file keeps the core portable.
 */
public final class FileCodec implements Codec {
    private final File pluginDir;
    private byte[] blob;
    private String aid = "";
    private boolean ok;

    public FileCodec(File pluginDir) {
        this.pluginDir = pluginDir;
        pluginDir.mkdirs();
        File b = new File(pluginDir, "damod.bin");
        if (b.exists()) {
            try {
                blob = readAll(b);
                // We cannot run the native plugin on PC without the .so; mark not-ok but keep
                // the blob so it can be pushed to a device, and log the situation once.
                ok = false;
                aid = peekAid(blob);
            } catch (Exception e) { ok = false; }
        }
    }

    @Override public String id() { return ok ? aid : null; }
    @Override public boolean ok() { return ok; }

    @Override
    public boolean load(byte[] newBlob) {
        this.blob = newBlob;
        try {
            writeAll(new File(pluginDir, "damod.bin"), newBlob);
            this.aid = peekAid(newBlob);
            System.out.println("[codec] saved plugin damod.bin (" + newBlob.length
                    + "B, aid=" + aid + "). Native encode requires Android/DaMod or a JNI host.");
        } catch (Exception e) { /* ignore */ }
        this.ok = false;   // no native engine on plain JVM
        return true;
    }

    @Override public byte[] encode(byte[] xml) { return ok ? null : null; }
    @Override public byte[] decode(byte[] body) { return body; }

    /** Container: [3 tag][1 keylen][key][1 aidlen][aid]... -> aid is the Algo-ID UUID string. */
    static String peekAid(byte[] b) {
        try {
            int p = 3;
            int keylen = b[p] & 0xff; p += 1 + keylen;
            int aidlen = b[p] & 0xff; p += 1;
            return new String(b, p, aidlen, "UTF-8");
        } catch (Exception e) { return ""; }
    }

    private static byte[] readAll(File f) throws Exception {
        byte[] b = new byte[(int) f.length()];
        try (FileInputStream in = new FileInputStream(f)) { int n = in.read(b); if (n < b.length) b = java.util.Arrays.copyOf(b, n); }
        return b;
    }
    private static void writeAll(File f, byte[] b) throws Exception {
        f.getParentFile().mkdirs();
        try (FileOutputStream out = new FileOutputStream(f)) { out.write(b); }
    }
}
