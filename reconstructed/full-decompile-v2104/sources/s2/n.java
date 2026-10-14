package s2;

/* JADX INFO: compiled from: JsonParser.java */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class n {
    public s2.i a(java.io.Reader reader) throws s2.q, s2.j {
        try {
            y2.a aVar = new y2.a(reader);
            s2.i iVarC = c(aVar);
            if (!iVarC.g() && aVar.V() != y2.b.END_DOCUMENT) {
                throw new s2.q("Did not consume the entire document.");
            }
            return iVarC;
        } catch (java.lang.NumberFormatException e5) {
            throw new s2.q(e5);
        } catch (y2.d e6) {
            throw new s2.q(e6);
        } catch (java.io.IOException e7) {
            throw new s2.j(e7);
        }
    }

    public s2.i b(java.lang.String str) throws s2.q {
        return a(new java.io.StringReader(str));
    }

    public s2.i c(y2.a aVar) throws s2.q, s2.j {
        boolean zS = aVar.s();
        aVar.c0(true);
        try {
            try {
                s2.i iVarA = u2.j.a(aVar);
                aVar.c0(zS);
                return iVarA;
            } catch (java.lang.OutOfMemoryError e5) {
                throw new s2.m("Failed parsing JSON source: " + aVar + " to Json", e5);
            } catch (java.lang.StackOverflowError e6) {
                throw new s2.m("Failed parsing JSON source: " + aVar + " to Json", e6);
            }
        } catch (java.lang.Throwable th) {
            aVar.c0(zS);
            throw th;
        }
    }
}
