.class public Lo2/b$a;
.super Ljava/io/OutputStream;
.source "Slf4jLogFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lo2/b;-><init>(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/StringBuilder;

.field public final synthetic b:Lo2/b;


# direct methods
.method public constructor <init>(Lo2/b;Ljava/lang/StringBuilder;)V
    .locals 0

    iput-object p1, p0, Lo2/b$a;->b:Lo2/b;

    iput-object p2, p0, Lo2/b$a;->a:Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 1

    iget-object v0, p0, Lo2/b$a;->a:Ljava/lang/StringBuilder;

    int-to-char p1, p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method
