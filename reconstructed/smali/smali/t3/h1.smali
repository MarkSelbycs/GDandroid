.class public interface abstract Lt3/h1;
.super Ljava/lang/Object;
.source "Job.kt"

# interfaces
.implements Ld3/g$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lt3/h1$a;,
        Lt3/h1$b;
    }
.end annotation


# static fields
.field public static final m:Lt3/h1$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lt3/h1$b;->a:Lt3/h1$b;

    sput-object v0, Lt3/h1;->m:Lt3/h1$b;

    return-void
.end method


# virtual methods
.method public abstract P(ZZLl3/l;)Lt3/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZZ",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)",
            "Lt3/r0;"
        }
    .end annotation
.end method

.method public abstract X(Ll3/l;)Lt3/r0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ll3/l<",
            "-",
            "Ljava/lang/Throwable;",
            "La3/o;",
            ">;)",
            "Lt3/r0;"
        }
    .end annotation
.end method

.method public abstract e(Ljava/util/concurrent/CancellationException;)V
.end method

.method public abstract f()Z
.end method

.method public abstract h(Lt3/r;)Lt3/p;
.end method

.method public abstract start()Z
.end method

.method public abstract y()Ljava/util/concurrent/CancellationException;
.end method
