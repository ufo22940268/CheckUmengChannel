.class Lcom/tencent/qc/stat/n;
.super Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;
.source "ProGuard"


# instance fields
.field final synthetic a:Lcom/tencent/qc/stat/l;


# direct methods
.method constructor <init>(Lcom/tencent/qc/stat/l;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/tencent/qc/stat/n;->a:Lcom/tencent/qc/stat/l;

    invoke-direct {p0}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;-><init>()V

    return-void
.end method


# virtual methods
.method public getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 144
    invoke-super {p0, p1, p2}, Lorg/apache/http/impl/client/DefaultConnectionKeepAliveStrategy;->getKeepAliveDuration(Lorg/apache/http/HttpResponse;Lorg/apache/http/protocol/HttpContext;)J

    move-result-wide v0

    .line 145
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 147
    const-wide/16 v0, 0x4e20

    .line 149
    :cond_0
    return-wide v0
.end method
