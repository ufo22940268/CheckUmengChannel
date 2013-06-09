.class final Lcom/tencent/weibo/b/b;
.super Ljava/util/HashMap;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "1"

    const-string v1, "connect out of time"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/weibo/b/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "1001"

    const-string v1, "qHttpClient not specified"

    invoke-virtual {p0, v0, v1}, Lcom/tencent/weibo/b/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "2001"

    const-string v1, "Can not receive the certificates from server."

    invoke-virtual {p0, v0, v1}, Lcom/tencent/weibo/b/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "2002"

    const-string v1, "The name on the security certificate is invalid or does not match  \"open.t.qq.com\"."

    invoke-virtual {p0, v0, v1}, Lcom/tencent/weibo/b/b;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
