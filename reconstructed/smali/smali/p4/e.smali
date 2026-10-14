.class public Lp4/e;
.super Lp4/g;
.source "AuthHMAC384SHA512.java"


# static fields
.field public static final i:Lr4/j;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    new-instance v0, Lr4/j;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-direct {v0, v1}, Lr4/j;-><init>([I)V

    sput-object v0, Lp4/e;->i:Lr4/j;

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
        0x7
    .end array-data
.end method

.method public constructor <init>()V
    .locals 6

    sget-object v2, Lp4/e;->i:Lr4/j;

    const-string v1, "SHA-512"

    const/16 v3, 0x40

    const/16 v4, 0x30

    const/16 v5, 0x80

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lp4/g;-><init>(Ljava/lang/String;Lr4/j;III)V

    return-void
.end method
