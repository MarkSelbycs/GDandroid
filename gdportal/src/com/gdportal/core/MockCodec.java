package com.gdportal.core;

/**
 * TEST-ONLY codec: identity encode/decode so the full protocol loop
 * (ticket->auth->keep->state->term->query->kick) can be exercised against
 * mock_cdc.py on a plain JVM. NEVER use against a real portal.
 */
public final class MockCodec implements Codec {
    @Override public String id() { return "11111111-2222-3333-4444-555555555555"; }
    @Override public boolean ok() { return true; }
    @Override public boolean load(byte[] blob) { return true; }
    @Override public byte[] encode(byte[] xml) { return xml; }
    @Override public byte[] decode(byte[] body) { return body; }
}
