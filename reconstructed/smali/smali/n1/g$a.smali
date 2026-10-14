.class public Ln1/g$a;
.super Ljava/lang/Object;
.source "ConverterRegistry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# static fields
.field public static final a:Ln1/g;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ln1/g;

    invoke-direct {v0}, Ln1/g;-><init>()V

    sput-object v0, Ln1/g$a;->a:Ln1/g;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a()Ln1/g;
    .locals 3

    sget-object v0, Ln1/g$a;->a:Ln1/g;

    return-object v0
.end method
