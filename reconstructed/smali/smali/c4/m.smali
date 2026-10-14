.class public interface abstract Lc4/m;
.super Ljava/lang/Object;
.source "CookieJar.java"


# static fields
.field public static final a:Lc4/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc4/m$a;

    invoke-direct {v0}, Lc4/m$a;-><init>()V

    sput-object v0, Lc4/m;->a:Lc4/m;

    return-void
.end method


# virtual methods
.method public abstract a(Lc4/r;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc4/r;",
            "Ljava/util/List<",
            "Lc4/l;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract b(Lc4/r;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lc4/r;",
            ")",
            "Ljava/util/List<",
            "Lc4/l;",
            ">;"
        }
    .end annotation
.end method
