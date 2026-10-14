.class public interface abstract Lc4/b;
.super Ljava/lang/Object;
.source "Authenticator.java"


# static fields
.field public static final a:Lc4/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lc4/b$a;

    invoke-direct {v0}, Lc4/b$a;-><init>()V

    sput-object v0, Lc4/b;->a:Lc4/b;

    return-void
.end method


# virtual methods
.method public abstract a(Lc4/c0;Lc4/a0;)Lc4/y;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
