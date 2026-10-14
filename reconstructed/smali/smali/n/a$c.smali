.class public final Ln/a$c;
.super Ljava/lang/Object;
.source "FontResourcesParserCompat.java"

# interfaces
.implements Ln/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final a:[Ln/a$d;


# direct methods
.method public constructor <init>([Ln/a$d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln/a$c;->a:[Ln/a$d;

    return-void
.end method


# virtual methods
.method public a()[Ln/a$d;
    .locals 1

    iget-object v0, p0, Ln/a$c;->a:[Ln/a$d;

    return-object v0
.end method
