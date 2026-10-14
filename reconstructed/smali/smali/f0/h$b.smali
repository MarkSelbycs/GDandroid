.class public final Lf0/h$b;
.super Ljava/lang/Object;
.source "SupportSQLiteOpenHelper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf0/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/h$b$a;,
        Lf0/h$b$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final f:Lf0/h$b$b;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Ljava/lang/String;

.field public final c:Lf0/h$a;

.field public final d:Z

.field public final e:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lf0/h$b$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf0/h$b$b;-><init>(Lm3/g;)V

    sput-object v0, Lf0/h$b;->f:Lf0/h$b$b;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lf0/h$a;ZZ)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf0/h$b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lf0/h$b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lf0/h$b;->c:Lf0/h$a;

    .line 5
    iput-boolean p4, p0, Lf0/h$b;->d:Z

    .line 6
    iput-boolean p5, p0, Lf0/h$b;->e:Z

    return-void
.end method

.method public static final a(Landroid/content/Context;)Lf0/h$b$a;
    .locals 1

    sget-object v0, Lf0/h$b;->f:Lf0/h$b$b;

    invoke-virtual {v0, p0}, Lf0/h$b$b;->a(Landroid/content/Context;)Lf0/h$b$a;

    move-result-object p0

    return-object p0
.end method
