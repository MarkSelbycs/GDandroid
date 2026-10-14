.class public Lcom/msec/cc$a;
.super Lokhttp3/EventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/msec/cc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Lokhttp3/EventListener;


# direct methods
.method public constructor <init>(Lokhttp3/EventListener;)V
    .locals 0

    invoke-direct {p0}, Lokhttp3/EventListener;-><init>()V

    iput-object p1, p0, Lcom/msec/cc$a;->a:Lokhttp3/EventListener;

    return-void
.end method
