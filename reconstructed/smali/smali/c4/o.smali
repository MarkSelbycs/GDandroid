.class public interface abstract Lc4/o;
.super Ljava/lang/Object;
.source "Dns.java"


# static fields
.field public static final a:Lc4/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc4/o$a;

    invoke-direct {v0}, Lc4/o$a;-><init>()V

    sput-object v0, Lc4/o;->a:Lc4/o;

    return-void
.end method


# virtual methods
.method public abstract lookup(Ljava/lang/String;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/net/InetAddress;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/UnknownHostException;
        }
    .end annotation
.end method
