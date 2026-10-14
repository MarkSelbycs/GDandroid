.class public Lo4/c$a;
.super Ljava/lang/Object;
.source "MPv1.java"

# interfaces
.implements Lt4/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lo4/c;


# direct methods
.method public constructor <init>(Lo4/c;)V
    .locals 0

    iput-object p1, p0, Lo4/c$a;->a:Lo4/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo4/g;)Lk4/k;
    .locals 0

    new-instance p1, Lk4/l;

    invoke-direct {p1}, Lk4/l;-><init>()V

    return-object p1
.end method
