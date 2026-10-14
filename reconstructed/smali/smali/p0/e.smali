.class public Lp0/e;
.super Ljava/lang/Object;
.source "WebViewProviderFactoryAdapter.java"

# interfaces
.implements Lp0/d;


# instance fields
.field public final a:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;


# direct methods
.method public constructor <init>(Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lp0/e;->a:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    return-void
.end method


# virtual methods
.method public getDropDataProvider()Lorg/chromium/support_lib_boundary/DropDataContentProviderBoundaryInterface;
    .locals 2

    .line 1
    const-class v0, Lorg/chromium/support_lib_boundary/DropDataContentProviderBoundaryInterface;

    iget-object v1, p0, Lp0/e;->a:Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;

    .line 2
    invoke-interface {v1}, Lorg/chromium/support_lib_boundary/WebViewProviderFactoryBoundaryInterface;->getDropDataProvider()Ljava/lang/reflect/InvocationHandler;

    move-result-object v1

    .line 3
    invoke-static {v0, v1}, Lorg/chromium/support_lib_boundary/util/BoundaryInterfaceReflectionUtil;->castToSuppLibClass(Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/chromium/support_lib_boundary/DropDataContentProviderBoundaryInterface;

    return-object v0
.end method
