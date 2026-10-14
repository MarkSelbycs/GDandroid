package x0;

/* JADX INFO: compiled from: NetworkStateTracker.kt */
/* JADX INFO: loaded from: D:\worksoftware\re_tools\v2104_app_fixed.dex */
public final class i extends x0.g<v0.c> {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final android.net.ConnectivityManager f6785f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final x0.i.a f6786g;

    /* JADX INFO: compiled from: NetworkStateTracker.kt */
    public static final class a extends android.net.ConnectivityManager.NetworkCallback {
        public a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onCapabilitiesChanged(android.net.Network network, android.net.NetworkCapabilities networkCapabilities) {
            m3.k.e(network, "network");
            m3.k.e(networkCapabilities, "capabilities");
            q0.n.e().a(x0.j.f6788a, "Network capabilities changed: " + networkCapabilities);
            x0.i iVar = x0.i.this;
            iVar.g(x0.j.c(iVar.f6785f));
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public void onLost(android.net.Network network) {
            m3.k.e(network, "network");
            q0.n.e().a(x0.j.f6788a, "Network connection lost");
            x0.i iVar = x0.i.this;
            iVar.g(x0.j.c(iVar.f6785f));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public i(android.content.Context context, c1.b bVar) {
        super(context, bVar);
        m3.k.e(context, "context");
        m3.k.e(bVar, "taskExecutor");
        java.lang.Object systemService = d().getSystemService("connectivity");
        m3.k.c(systemService, "null cannot be cast to non-null type android.net.ConnectivityManager");
        this.f6785f = (android.net.ConnectivityManager) systemService;
        this.f6786g = new x0.i.a();
    }

    @Override // x0.g
    public void h() {
        try {
            q0.n.e().a(x0.j.f6788a, "Registering network callback");
            a1.k.a(this.f6785f, this.f6786g);
        } catch (java.lang.IllegalArgumentException e5) {
            q0.n.e().d(x0.j.f6788a, "Received exception while registering network callback", e5);
        } catch (java.lang.SecurityException e6) {
            q0.n.e().d(x0.j.f6788a, "Received exception while registering network callback", e6);
        }
    }

    @Override // x0.g
    public void i() {
        try {
            q0.n.e().a(x0.j.f6788a, "Unregistering network callback");
            a1.i.c(this.f6785f, this.f6786g);
        } catch (java.lang.IllegalArgumentException e5) {
            q0.n.e().d(x0.j.f6788a, "Received exception while unregistering network callback", e5);
        } catch (java.lang.SecurityException e6) {
            q0.n.e().d(x0.j.f6788a, "Received exception while unregistering network callback", e6);
        }
    }

    @Override // x0.g
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public v0.c e() {
        return x0.j.c(this.f6785f);
    }
}
