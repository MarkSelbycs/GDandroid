.class public final Lv0/b$a;
.super Lv0/b;
.source "WorkConstraintsTracker.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lv0/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lv0/b$a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lv0/b$a;

    invoke-direct {v0}, Lv0/b$a;-><init>()V

    sput-object v0, Lv0/b$a;->a:Lv0/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lv0/b;-><init>(Lm3/g;)V

    return-void
.end method
