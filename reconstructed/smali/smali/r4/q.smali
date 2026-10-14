.class public Lr4/q;
.super Lr4/o;
.source "TlsAddress.java"


# static fields
.field public static final p:Ln4/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const-class v0, Lr4/n;

    invoke-static {v0}, Ln4/b;->d(Ljava/lang/Class;)Ln4/a;

    move-result-object v0

    sput-object v0, Lr4/q;->p:Ln4/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lr4/o;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lr4/q;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lr4/o;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
