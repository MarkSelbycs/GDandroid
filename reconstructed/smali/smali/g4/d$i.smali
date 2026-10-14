.class public abstract Lg4/d$i;
.super Ljava/lang/Object;
.source "FramedConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "i"
.end annotation


# static fields
.field public static final a:Lg4/d$i;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lg4/d$i$a;

    invoke-direct {v0}, Lg4/d$i$a;-><init>()V

    sput-object v0, Lg4/d$i;->a:Lg4/d$i;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public b(Lg4/d;)V
    .locals 0

    return-void
.end method

.method public abstract c(Lg4/e;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
