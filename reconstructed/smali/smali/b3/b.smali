.class public abstract Lb3/b;
.super Lb3/a;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb3/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lb3/a<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Lb3/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lb3/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lb3/b$a;-><init>(Lm3/g;)V

    sput-object v0, Lb3/b;->a:Lb3/b$a;

    return-void
.end method
