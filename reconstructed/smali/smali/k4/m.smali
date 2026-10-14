.class public final Lk4/m;
.super Ljava/lang/Object;
.source "SNMP4JSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lk4/m$b;,
        Lk4/m$a;
    }
.end annotation


# static fields
.field public static a:I = 0xc350

.field public static b:Z

.field public static volatile c:Z

.field public static d:Lt4/h;

.field public static e:Lt4/i;

.field public static f:Lt4/d;

.field public static g:Lt4/j;

.field public static h:J

.field public static i:Z

.field public static j:Z

.field public static k:Lk4/m$a;

.field public static l:I

.field public static m:Lk4/m$b;

.field public static n:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lt4/b;

    invoke-direct {v0}, Lt4/b;-><init>()V

    sput-object v0, Lk4/m;->d:Lt4/h;

    .line 2
    new-instance v0, Lt4/c;

    invoke-direct {v0}, Lt4/c;-><init>()V

    sput-object v0, Lk4/m;->e:Lt4/i;

    .line 3
    new-instance v0, Lt4/f;

    invoke-direct {v0}, Lt4/f;-><init>()V

    sput-object v0, Lk4/m;->f:Lt4/d;

    .line 4
    new-instance v0, Lt4/g;

    invoke-direct {v0}, Lt4/g;-><init>()V

    sput-object v0, Lk4/m;->g:Lt4/j;

    const-wide/32 v0, 0xea60

    .line 5
    sput-wide v0, Lk4/m;->h:J

    const/4 v0, 0x0

    .line 6
    sput-boolean v0, Lk4/m;->i:Z

    .line 7
    sput-boolean v0, Lk4/m;->j:Z

    .line 8
    sget-object v0, Lk4/m$a;->b:Lk4/m$a;

    sput-object v0, Lk4/m;->k:Lk4/m$a;

    const/16 v0, 0x1370

    .line 9
    sput v0, Lk4/m;->l:I

    .line 10
    sget-object v0, Lk4/m$b;->b:Lk4/m$b;

    sput-object v0, Lk4/m;->m:Lk4/m$b;

    const/4 v0, 0x1

    .line 11
    sput-boolean v0, Lk4/m;->n:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()I
    .locals 3

    sget v0, Lk4/m;->l:I

    return v0
.end method

.method public static b()I
    .locals 1

    sget v0, Lk4/m;->a:I

    return v0
.end method

.method public static c()Lt4/d;
    .locals 3

    sget-object v0, Lk4/m;->f:Lt4/d;

    return-object v0
.end method

.method public static d()Lk4/m$a;
    .locals 3

    sget-object v0, Lk4/m;->k:Lk4/m$a;

    return-object v0
.end method

.method public static e()Lk4/m$b;
    .locals 1

    sget-object v0, Lk4/m;->m:Lk4/m$b;

    return-object v0
.end method

.method public static f()Lt4/h;
    .locals 2

    sget-object v0, Lk4/m;->d:Lt4/h;

    return-object v0
.end method

.method public static g()J
    .locals 4

    sget-wide v0, Lk4/m;->h:J

    return-wide v0
.end method

.method public static h()Lt4/i;
    .locals 1

    sget-object v0, Lk4/m;->e:Lt4/i;

    return-object v0
.end method

.method public static i()Lt4/j;
    .locals 2

    sget-object v0, Lk4/m;->g:Lt4/j;

    return-object v0
.end method

.method public static j()Z
    .locals 1

    sget-boolean v0, Lk4/m;->i:Z

    return v0
.end method

.method public static k()Z
    .locals 1

    sget-boolean v0, Lk4/m;->n:Z

    return v0
.end method

.method public static l()Z
    .locals 1

    sget-boolean v0, Lk4/m;->b:Z

    return v0
.end method

.method public static m()Z
    .locals 3

    sget-boolean v0, Lk4/m;->c:Z

    return v0
.end method

.method public static n()Z
    .locals 1

    sget-boolean v0, Lk4/m;->j:Z

    return v0
.end method
