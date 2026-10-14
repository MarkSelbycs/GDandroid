package com.gdportal.android;

import com.gdportal.core.Codec;

/**
 * Codec adapter over the ORIGINAL DaMod class (com.cndatacom.campus.netcore.DaMod).
 * The shipped libdaproxy.so exports JNI symbols bound to that exact class name
 * (Java_com_cndatacom_campus_netcore_DaMod_load/enc/dec/aid/...), so the original
 * class must keep its package/name — it is included verbatim in android-src and
 * has zero dependencies on the packer (verified).
 */
public final class DaModCodec implements Codec {

    private final com.cndatacom.campus.netcore.DaMod m =
            com.cndatacom.campus.netcore.DaMod.getInstance();

    @Override public boolean ok() { try { return m.isOk(); } catch (Throwable t) { return false; } }

    @Override public String id() { try { return ok() ? m.getId() : null; } catch (Throwable t) { return null; } }

    @Override
    public boolean load(byte[] blob) {
        try {
            m.setData(blob);          // original: native load + isOk flips true on success
            return m.isOk();
        } catch (Throwable t) { return false; }
    }

    @Override public byte[] encode(byte[] xml) { try { return ok() ? m.Encode(xml) : null; } catch (Throwable t) { return null; } }
    @Override public byte[] decode(byte[] body) { try { return ok() ? m.Decode(body) : null; } catch (Throwable t) { return null; } }

    public void release() { try { m.Free(); } catch (Throwable ignore) {} }
}
