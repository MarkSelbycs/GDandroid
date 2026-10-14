.class public final La3/o;
.super Ljava/lang/Object;
.source "Unit.kt"


# static fields
.field public static final a:La3/o;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, La3/o;

    invoke-direct {v0}, La3/o;-><init>()V

    sput-object v0, La3/o;->a:La3/o;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    const-string v0, "kotlin.Unit"

    return-object v0
.end method
