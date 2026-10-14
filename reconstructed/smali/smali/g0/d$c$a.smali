.class public final Lg0/d$c$a;
.super Ljava/lang/RuntimeException;
.source "FrameworkSQLiteOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg0/d$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# instance fields
.field public final a:Lg0/d$c$b;

.field public final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lg0/d$c$b;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "callbackName"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cause"

    invoke-static {p2, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 2
    iput-object p1, p0, Lg0/d$c$a;->a:Lg0/d$c$b;

    .line 3
    iput-object p2, p0, Lg0/d$c$a;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final b()Lg0/d$c$b;
    .locals 1

    iget-object v0, p0, Lg0/d$c$a;->a:Lg0/d$c$b;

    return-object v0
.end method

.method public getCause()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lg0/d$c$a;->b:Ljava/lang/Throwable;

    return-object v0
.end method
