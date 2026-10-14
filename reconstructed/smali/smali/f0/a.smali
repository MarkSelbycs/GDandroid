.class public final Lf0/a;
.super Ljava/lang/Object;
.source "SimpleSQLiteQuery.kt"

# interfaces
.implements Lf0/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lf0/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
.end annotation


# static fields
.field public static final c:Lf0/a$a;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:[Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    new-instance v0, Lf0/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lf0/a$a;-><init>(Lm3/g;)V

    sput-object v0, Lf0/a;->c:Lf0/a$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, v0}, Lf0/a;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    const-string v0, "query"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lf0/a;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lf0/a;->b:[Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public c(Lf0/i;)V
    .locals 2

    const-string v0, "statement"

    invoke-static {p1, v0}, Lm3/k;->e(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v0, Lf0/a;->c:Lf0/a$a;

    iget-object v1, p0, Lf0/a;->b:[Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Lf0/a$a;->b(Lf0/i;[Ljava/lang/Object;)V

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lf0/a;->a:Ljava/lang/String;

    return-object v0
.end method
