.class public interface abstract Lq0/r;
.super Ljava/lang/Object;
.source "Operation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lq0/r$b;
    }
.end annotation


# static fields
.field public static final a:Lq0/r$b$c;

.field public static final b:Lq0/r$b$b;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lq0/r$b$c;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lq0/r$b$c;-><init>(Lq0/r$a;)V

    sput-object v0, Lq0/r;->a:Lq0/r$b$c;

    .line 2
    new-instance v0, Lq0/r$b$b;

    invoke-direct {v0, v1}, Lq0/r$b$b;-><init>(Lq0/r$a;)V

    sput-object v0, Lq0/r;->b:Lq0/r$b$b;

    return-void
.end method


# virtual methods
.method public abstract a()Lr2/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lr2/a<",
            "Lq0/r$b$c;",
            ">;"
        }
    .end annotation
.end method
