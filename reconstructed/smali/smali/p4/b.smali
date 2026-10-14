.class public Lp4/b;
.super Lp4/g;
.source "AuthHMAC128SHA224.java"


# static fields
.field public static final i:Lr4/j;

.field public static final o:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lr4/j;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lr4/j;-><init>([I)V

    sput-object v0, Lp4/b;->i:Lr4/j;

    .line 2
    sget v0, Lp4/a;->f:I

    sput v0, Lp4/b;->o:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x3
        0x6
        0x1
        0x6
        0x3
        0xa
        0x1
        0x1
        0x4
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v2, Lp4/b;->i:Lr4/j;

    sget v5, Lp4/b;->o:I

    const-string v1, "SHA-224"

    const/16 v3, 0x1c

    const/16 v4, 0x10

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lp4/g;-><init>(Ljava/lang/String;Lr4/j;III)V

    return-void
.end method
