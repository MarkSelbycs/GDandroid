.class public final Ln/a$e;
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
    name = "e"
.end annotation


# instance fields
.field public final a:Lt/e;

.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lt/e;IILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln/a$e;->a:Lt/e;

    .line 3
    iput p2, p0, Ln/a$e;->c:I

    .line 4
    iput p3, p0, Ln/a$e;->b:I

    .line 5
    iput-object p4, p0, Ln/a$e;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Ln/a$e;->c:I

    return v0
.end method

.method public b()Lt/e;
    .locals 1

    iget-object v0, p0, Ln/a$e;->a:Lt/e;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ln/a$e;->d:Ljava/lang/String;

    return-object v0
.end method

.method public d()I
    .locals 1

    iget v0, p0, Ln/a$e;->b:I

    return v0
.end method
