package com.gdportal.core;

/** Pluggable ZSM/DaMod body codec. */
public interface Codec {
    /** Plugin algorithm id (UUID) for Algo-ID header; null when no plugin loaded. */
    String id();

    boolean ok();

    /** Install a plugin blob received from a server Error-Code:200 response. */
    boolean load(byte[] blob);

    byte[] encode(byte[] xml);

    byte[] decode(byte[] body);
}
