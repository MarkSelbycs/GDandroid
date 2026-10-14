.class public final Lg0/f;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelperFactory.kt"

# interfaces
.implements Lf0/h$c;


# annotations
.annotation runtime Lkotlin/Metadata;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lf0/h$b;)Lf0/h;
    .locals 7

    const-string v0, "configuration"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lg0/d;

    .line 2
    iget-object v2, p1, Lf0/h$b;->a:Landroid/content/Context;

    .line 3
    iget-object v3, p1, Lf0/h$b;->b:Ljava/lang/String;

    .line 4
    iget-object v4, p1, Lf0/h$b;->c:Lf0/h$a;

    .line 5
    iget-boolean v5, p1, Lf0/h$b;->d:Z

    .line 6
    iget-boolean v6, p1, Lf0/h$b;->e:Z

    move-object v1, v0

    .line 7
    invoke-direct/range {v1 .. v6}, Lg0/d;-><init>(Landroid/content/Context;Ljava/lang/String;Lf0/h$a;ZZ)V

    return-object v0
.end method
