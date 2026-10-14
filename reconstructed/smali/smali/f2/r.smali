.class public Lf2/r;
.super Ljava/lang/Object;
.source "XML.java"


# static fields
.field public static final a:Ljava/lang/Character;

.field public static final b:Ljava/lang/Character;

.field public static final c:Ljava/lang/Character;

.field public static final d:Ljava/lang/Character;

.field public static final e:Ljava/lang/Character;

.field public static final f:Ljava/lang/Character;

.field public static final g:Ljava/lang/Character;

.field public static final h:Ljava/lang/Character;

.field public static final i:Ljava/lang/Character;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x26

    .line 1
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->a:Ljava/lang/Character;

    const/16 v0, 0x27

    .line 2
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->b:Ljava/lang/Character;

    const/16 v0, 0x21

    .line 3
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->c:Ljava/lang/Character;

    const/16 v0, 0x3d

    .line 4
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->d:Ljava/lang/Character;

    const/16 v0, 0x3e

    .line 5
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->e:Ljava/lang/Character;

    const/16 v0, 0x3c

    .line 6
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->f:Ljava/lang/Character;

    const/16 v0, 0x3f

    .line 7
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->g:Ljava/lang/Character;

    const/16 v0, 0x22

    .line 8
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->h:Ljava/lang/Character;

    const/16 v0, 0x2f

    .line 9
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    sput-object v0, Lf2/r;->i:Ljava/lang/Character;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lf2/l;Ljava/lang/String;Z)Lf2/l;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    invoke-static {p0, p1, p2}, Lh2/a;->b(Lf2/l;Ljava/lang/String;Z)V

    return-object p0
.end method

.method public static b(Ljava/lang/String;)Lf2/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lf2/r;->c(Ljava/lang/String;Z)Lf2/l;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/String;Z)Lf2/l;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lf2/h;
        }
    .end annotation

    new-instance v0, Lf2/l;

    invoke-direct {v0}, Lf2/l;-><init>()V

    invoke-static {v0, p0, p1}, Lf2/r;->a(Lf2/l;Ljava/lang/String;Z)Lf2/l;

    move-result-object p0

    return-object p0
.end method
