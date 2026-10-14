.class public Lo4/d$a;
.super Ljava/lang/Object;
.source "MPv2c.java"

# interfaces
.implements Lt4/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo4/d;


# direct methods
.method public constructor <init>(Lo4/d;)V
    .locals 0

    iput-object p1, p0, Lo4/d$a;->a:Lo4/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo4/g;)Lk4/k;
    .locals 0

    new-instance p1, Lk4/k;

    invoke-direct {p1}, Lk4/k;-><init>()V

    return-object p1
.end method
