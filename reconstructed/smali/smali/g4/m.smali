.class public interface abstract Lg4/m;
.super Ljava/lang/Object;
.source "PushObserver.java"


# static fields
.field public static final a:Lg4/m;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lg4/m$a;

    invoke-direct {v0}, Lg4/m$a;-><init>()V

    sput-object v0, Lg4/m;->a:Lg4/m;

    return-void
.end method


# virtual methods
.method public abstract a(ILjava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;)Z"
        }
    .end annotation
.end method

.method public abstract b(ILjava/util/List;Z)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lg4/f;",
            ">;Z)Z"
        }
    .end annotation
.end method

.method public abstract c(ILg4/a;)V
.end method

.method public abstract d(ILokio/BufferedSource;IZ)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
