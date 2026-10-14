.class public Lo4/e$e;
.super Ljava/lang/Object;
.source "MPv3.java"

# interfaces
.implements Lo4/e$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lo4/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lo4/e$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lo4/e$e;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lo4/b;)Ljava/util/Map;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lo4/b;",
            ")",
            "Ljava/util/Map<",
            "Lr4/b;",
            "Lr4/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
