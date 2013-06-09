.class final Lcom/tencent/weibo/e/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/net/ssl/X509TrustManager;


# instance fields
.field final synthetic a:Lcom/tencent/weibo/e/b;


# direct methods
.method constructor <init>(Lcom/tencent/weibo/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/weibo/e/c;->a:Lcom/tencent/weibo/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkClientTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public final checkServerTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "2001"

    invoke-static {v1}, Lcom/tencent/weibo/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v2, p1

    move v1, v0

    :goto_0
    if-lt v1, v2, :cond_1

    :goto_1
    if-nez v0, :cond_3

    new-instance v0, Ljava/security/cert/CertificateException;

    const-string v1, "2002"

    invoke-static {v1}, Lcom/tencent/weibo/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    aget-object v3, p1, v1

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v3}, Ljava/security/Principal;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "CN=open.t.qq.com,"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final getAcceptedIssuers()[Ljava/security/cert/X509Certificate;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
